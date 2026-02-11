# squares = []
# for i in range(6):
#     squares.append(i*i)
# print(squares)

# OR

# squares = [i*i for i in range(6)]
squares = [i*i for i in range(6) if i%2 != 0]
print(squares)