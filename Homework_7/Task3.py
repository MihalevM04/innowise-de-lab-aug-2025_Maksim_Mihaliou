secret_number = 7
user_number = 0

while user_number != secret_number:
    user_number = int(input("Угадайте число от 1 до 10: "))
    if user_number != secret_number:
        print("Неверно, попробуйте еще раз.")
    else:
        print("Поздравляю! Вы угадали число!")
