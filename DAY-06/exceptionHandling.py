try:
    x = int(input("Enter x: "))
    ans = 10/x

except ZeroDivisionError:
    print(f"Divided by 0 is not allowed")

else:
    print(ans)
