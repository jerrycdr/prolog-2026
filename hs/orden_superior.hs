

-- funciones de orden superior en Haskell

-- map : Aplica una función a cada elemento de una lista

-- Asignar la expresión a un nombre

-- 1. El cuadrado de cada elemento de la lista
cuadrados :: [Int]
cuadrados = map (\x -> x * x) [1, 2, 3 ,4 ,5] 

-- 2. Devuelve impares de una lista
impares :: [Int]
impares = filter odd [1, 2, 3, 4,5, 6, 7, 8, 9, 9]

