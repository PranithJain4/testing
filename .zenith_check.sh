#!/bin/bash
echo '--- REPO FILES ---'
ls -R /app | head -n 50

echo ''
echo '===== C CHECKS ====='
echo '--- COMPILING C ---' ; find . -name '*.c' > /tmp/cfiles.txt && gcc $(cat /tmp/cfiles.txt) -o /tmp/app_c -Wall -Wextra -g -lm 2>&1 ; if [ $? -ne 0 ]; then echo 'C COMPILE ERROR' ; else echo '--- RUNNING C ---' ; timeout 5 /tmp/app_c 2>&1 ; RE=$? ; [ $RE -ne 0 ] && echo "C RUNTIME ERROR (exit $RE)" ; fi
echo ''
echo '===== PYTHON CHECKS ====='
pip install --quiet pytest flake8 2>&1 ; echo "--- LINT ---" ; flake8 . --max-line-length=120 ; echo "--- TESTS ---" ; pytest -v 2>&1 || true
