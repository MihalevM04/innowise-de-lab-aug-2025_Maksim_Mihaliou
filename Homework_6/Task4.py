import random

random_number = random.randint(1, 5)
print("Я загадал число от 1 до 5. Попробуй угадать!")
input_number = int(input("Введите число: "))

if input_number == random_number:
    print("Ты угадал!")
elif input_number > random_number:
    print("Слишком много!")
else:
    print("Слишком мало!")
