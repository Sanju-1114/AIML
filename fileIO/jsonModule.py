import json

# json_str = '{"name": "Sanju", "age": 25, "isTeacher": true, "isNull" : null}'
# py_obj = json.loads(json_str)
# print(type(py_obj))
# print(py_obj)

# py_obj = {'name': 'Sanju', 'age': 25, 'isTeacher': True, 'isNull': None}
# json_str = json.dumps(py_obj)
# print(type(json_str), json_str)


data = {
    "name": "Sanju",
    "age": 25,
    "isTeacher": True,
    "category": {"pattern": "HELLO", "template": "Hi there! How can I help you today?"},
    "examples": ["Hi", "Hello", "Hey", "Good morning"],
    "tags": ["greeting", "casual", "friendly"],
}

# with open("sample.json", "r") as f:
#     py_obj = json.load(f)
#     print(py_obj)

with open("sample2.json", "w") as f:
    py_obj = json.dump(data, f, indent=4, sort_keys=True)
