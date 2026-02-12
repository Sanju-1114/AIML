data = True
line_number = 0

with open("newSample.txt", "r") as f:
    while data:
        data = f.readline()
        line_number += 1
        if "Python" in data:
            print(f"Python found in line {line_number}")
            break
        