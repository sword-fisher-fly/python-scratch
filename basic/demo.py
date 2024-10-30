#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import json
from pprint import pprint
import types

current_directory = os.getcwd()
print("Current directory:", current_directory)

script_directory = os.path.dirname(os.path.abspath(__file__))
print("Current script directory:", script_directory)

print("uname: ", os.uname())

dir_names=[x for x in os.listdir('.') if os.path.isdir(x)]
print("current directory has dirs:", dir_names)

regular_file_names=[x for x in os.listdir('.') if os.path.isfile(x)]
print("current directory has regular files:", regular_file_names)

python_file_names=[x for x in os.listdir('.') if os.path.isfile(x) and os.path.splitext(x)[1]=='.py']
print("current directory has python files:", python_file_names)

## lambda
add = lambda x, y: x+y


print("lambda add: ", add(1,2))

text_file = "test.txt"
if os.path.exists(text_file):
    print("File exists: %s, delete it!" % text_file)
    os.remove(text_file)
    
lines = [
    'Hello world',
    'End of line'
]

def format_dict(d, indent=0):
    output = ""
    for key, value in d.items():
        if isinstance(value, dict):
            output += " " * indent + f"{key}:\n" + format_dict(value, indent + 4)
        else:
            output += " " * indent + f"{key}: {value}\n"
    return output

with open(text_file, "w") as f:
    print("write content to %s!" % text_file)
    # f.write("Hello, world!")
    # f.write("end of line.")
    f.writelines('\n'.join(lines))
    f.close()
    
with open(text_file, "r") as f:
    content = f.read()
    print("read content from {}: {}".format(text_file, content))
    f.close()
    
with open(text_file, "r") as f:
    # i = 0
    # while True:
    #     line = f.readline()
    #     i = i+1
    #     if not line:
    #         break
    #     print("read line {} from {}: {}".format(i, text_file, line.strip()))
    for line_number, line in enumerate(f, start=1):
        # if line_number > 3:
        #     break
        print(f"Line {line_number}: {line.strip()}")
    f.close()
    
with open(text_file, "r") as f:
    i = 1
    for line in f.readlines():
        print("read line %d from %s: %s" % (i, text_file, line.strip()))
        i = i+1
    f.close()
    
class Student(object):
    def __init__(self, name, age, score=60):
        self.__name = name
        self.__age = age
        self.__score = score
    def __str__(self):
        return "Student object (name: %s, age: %d, score: %d)" % (self.__name, self.__age, self.__score)
    __repr__ = __str__
    def set_score(self, val):
        if 0 <= val <=100:
            self.__score = val
        else:
            raise ValueError("bad score")
    def __getattr__(self, attr):
        if attr=='score':
            return 99
    def __call__(self):
        print('My name is %s.' % self.__name)

class Animal(object):
    def run(self):
        print("Animal is running...")

class Dog(Animal):
    def run(self):
        print("Dog is running...")
        
class Cat(Animal):
    def run(self):
        print("Cat is running...")
        
class Fib(object):
    def __init__(self):
        self.a, self.b = 0, 1 # 初始化两个计数器a，b

    def __iter__(self):
        return self # 实例本身就是迭代对象，故返回自己

    def __next__(self):
        self.a, self.b = self.b, self.a + self.b # 计算下一个值
        if self.a > 100: # 退出循环的条件
            raise StopIteration()
        return self.a #
    def __getitem__(self, n):
        # a, b = 1, 1
        # for x in range(n):
        #     a, b = b, a + b
        # return a
        if isinstance(n, int): # n是索引
            a, b = 1, 1
            for x in range(n):
                a, b = b, a + b
            return a
        if isinstance(n, slice): # n是切片
            start = n.start
            stop = n.stop
            if start is None:
                start = 0
            a, b = 1, 1
            L = []
            for x in range(stop):
                if x >= start:
                    L.append(a)
                a, b = b, a + b
            return L
        
class Chain(object):
    def __init__(self, path=''):
        self._path = path

    def __getattr__(self, path):
        return Chain('%s/%s' % (self._path, path))

    def __str__(self):
        return self._path

    __repr__ = __str__
    
    
if __name__ == '__main__':
    arr = list()
    arr.append(1)
    arr.append(2)
    print("list: ", arr)
    m = list(map(lambda x: x * x, arr))
    print("map: ", m)
    d = dict()
    d['a'] = {"a1": 2, "a2": "2"} 
    d['b'] = 2
    print("dict json dumps:\n%s" % json.dumps(d, indent=2))
    s = set()
    s.add(1)
    s.add(2)
    s.add(2)
    s.add(2)
    s.add(3)
    s.add(3)
    print("set: ", s)
    t = (1, 'michael', 20, [1,2,3])
    print("tuple: ", t) 
    y = [x for x in range(1,10) if x%2 == 0]
    print("Even number: ", y)
    std = Student("Michael", 20)
    print("Student:", std)
    std.__name = "jack"  # immutable
    print("Student changed:", std)
    std.set_score(99)
    print("student score changed:", std)
    print("student score:", std.score)
    
    a = Animal()
    a.run()

    d = Dog()
    d.run()

    c = Cat()
    c.run()
    
    print("type test(int): ", type(123))
    print("type test(abs): ", type(abs))
    print("type test(student): ", type(std))
    print("type test(dog): ", type(d))
    print("type test(None): ", type(None))
    print("type test: type(fn)==types.FunctionType => ", type(format_dict)==types.FunctionType)
    print("type test: type(abs)==types.BuiltinFunctionType => ", type(abs)== types.BuiltinFunctionType)
    print("type test: type((x for x in range(10)))==types.GeneratorType =>", type((x for x in range(10)))==types.GeneratorType)
    
    print("dir test: ", dir(std))
    
    for n in Fib():
        print(n)
    print("Fib()[1]: ", Fib()[1])
    print("Fib()[1:5]: ", Fib()[0:5])
    
    ch = Chain().user.timeline.list
    print("chain: ", ch)
    
    from urllib import request

    with request.urlopen('https://www.ifeng.com') as f:
        data = f.read()
        print('Status:', f.status, f.reason)
        print("======  Header  ====")

        for k, v in f.getheaders():
            print('%s: %s' % (k, v))
    # print('Data:', data.decode('utf-8'))
    