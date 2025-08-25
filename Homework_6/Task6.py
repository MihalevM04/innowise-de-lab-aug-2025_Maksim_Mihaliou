print("Для прекращения работы калькулятора введите 'q' в запросе оператора.")

while True:
    operator = input("Введите оператор (+, -, *, /): ")

    if operator == 'q':
        print("Выполнен выход из калькулятора.")
        break

    first_number = float(input("Введите первое число: "))
    second_number = float(input("Введите второе число: "))

    if operator == '+':
        print(f"{first_number} + {second_number} = {first_number + second_number}")
    elif operator == '-':
        print(f"{first_number} - {second_number} = {first_number - second_number}")
    elif operator == '*':
        print(f"{first_number} * {second_number} = {first_number * second_number}")
    elif operator == '/':
        if second_number == 0:
            print("Ошибка: деление на ноль!")
        else:
            print(f"{first_number} / {second_number} = {first_number / second_number}")
    else:
        print("Неверный символ оператора!")
