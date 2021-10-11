#Implement, as best as you can, the identity function in your favorite language
from typing import TypeVar

a = TypeVar('a')

def identity(f: a) -> a: 
    return f 

if __name__ == '__main__': 
    print(identity(1))
    print(identity('a'))
    print(identity(int))