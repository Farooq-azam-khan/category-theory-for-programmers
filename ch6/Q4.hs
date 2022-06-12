data Shape = Circle Float | Rect Float Float | Square Foat 

area :: Shape -> Float 
area (Circle r) = pi * r * r
area (Rect d h) = d * h 
area (Square d) = d * d 

circ :: Shape -> Float
circ (Circle r) = 2.0 * pi * r
circ (Rect d h) = 2.0 * (d + h)
circ (Square d) = 4.0 * d  




