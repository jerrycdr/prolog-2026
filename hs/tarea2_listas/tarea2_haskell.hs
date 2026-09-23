-- De forma recursiva acontar en Haskell, y en secuencial en JavaScript
-- cuantos son positsivos: funcion
-- cuantos son negativos: funcion
-- cuantos elementos existen: funcion
-- cual es el mayor

numeros :: [Int]
numeros = [-2,-50,70,101,2,4,-6,-8,0]
list2 :: [Int]
list2 = [1..10]
l2 :: [Int]
l2 = []

-- Metodo par imprimir listas ------------------------------
printList :: [Int] -> IO ()
printList l = 
    print l

-- tarea 2. metodos listas recursivas

-- positivos
contarPositivos :: [Int] -> Int
contarPositivos [] = 0
contarPositivos (x:xs)
  | x > 0     = 1 + contarPositivos xs
  | otherwise = contarPositivos xs

-- negativos
contarNegativos :: [Int] -> Int
contarNegativos [] = 0
contarNegativos (x:xs)
  | x < 0     = 1 + contarNegativos xs
  | otherwise = contarNegativos xs

-- contar
contarTotal :: [Int] -> Int
contarTotal []     = 0
contarTotal (_:xs) = 1 + contarTotal xs

-- mayor
encontrarMayor :: [Int] -> Int
encontrarMayor []     = error "La lista esta vacia"
encontrarMayor [x]    = x
encontrarMayor (x:xs) = max x (encontrarMayor xs)

-- Funcion main para imprimir los resultados
-- main
main :: IO ()
main = do
    print (contarPositivos numeros)
    print (contarNegativos numeros)
    print (contarTotal numeros)
    print (encontrarMayor numeros)


-- printList list
