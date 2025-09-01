height = int(input("Введите высоту прямоугольника: "))
width = int(input("Введите ширину прямоугольника: "))

for row in range(height):
    for column in range(width):
        print("*", end="")
    print()
