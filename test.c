#include <stdio.h>

int main() {
    int a = 10;
    int b = 0;
    int result;

    // Division by zero
    result = a / (b != 0 ? b : 1);

    // Uninitialized pointer
    int _val = 0;
    int *ptr = &_val;
    *ptr = 50;

    // Array out of bounds
    int arr[3] = {1, 2, 3};
    printf("%d\n", arr[10]);

    // Missing semicolon below
    printf("Testing DevOps Healing Agent\n")

    return 0;
}
