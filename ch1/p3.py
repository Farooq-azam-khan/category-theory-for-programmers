from p1 import identity
from p2 import compose

'''
Write a program that tries to test that your composition function
respects identity.
'''
if __name__ == '__main__': 
    f = identity(lambda _: 3)
    g = lambda x: x+3 
    print(compose(f, g))
    print(compose(f, g)(1))#3
    print(compose(f, g)(2))#3
    print(compose(f, g)(3.1415))#3

    f = lambda x: len(x)
    g = identity(lambda _: 'x')
    print(compose(f, g))
    print(compose(f, g)('a'))#1
    print(compose(f, g)('abc'))#1
    print(compose(f, g)(''))#1