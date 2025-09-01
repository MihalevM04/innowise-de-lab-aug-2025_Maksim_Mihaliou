shopping_list = ["milk", "bread", "eggs", "butter", "apples"] 
product_number = 1
print("Список покупок:")

for product in shopping_list:
    print(f"{product_number}. {product}")
    product_number += 1
