import math

def divide_numbers(a, b):
    return a / b

def read_file():
    file = open("non_existing_file.txt", "r")
    content = file.read()
    return content

def buggy_function():
    numbers = [1, 2, 3]

    # Index out of range
    print(numbers[10])

    # Undefined variable
    print(value)

    # Infinite recursion
    return buggy_function()

try:
    print("Result:", divide_numbers(10, 0))

    data = read_file()
    print(data)

    buggy_function()

    # Wrong type operation
    result = "10" + 5
    print(result)

except Exception as e:
    print("Error occurred:", e)

# Syntax error below
if True
    print("Missing colon fixed?")
