'''
Implement the composition function in your favorite language. It
takes two functions as arguments and returns a function that is
their composition.
'''

def compose(f, g): 
    h = lambda x: f(g(x))
    return h 


if __name__ == '__main__': 
    g = lambda x: x 
    f = lambda x: x 
    print(compose(f, g))
    print(compose(f, g)(1))