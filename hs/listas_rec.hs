 -- supongamos que el usuario solo ingresa valores positivos
 {-
 fibonacci :: Int -> Int
 fibonacci n = if n == 0
    then 0
    else if n == 1
        then 1
        else (n-1) + fibonacci (n - 1)
            
-}

{- 
imprime :: IO -> String
imprime s =
    putStrLn $ "" ++

-- serie fibonacci (BIEN al parecer)
fibonacci :: Int -> Int
fibonacci 0 = 0
    print 0
fibonacci 1 = 1
    print 1
fibonacci n = 
    putStrLn (n-2) ++ " + " ++ (n-1)
    fibonacci(n-2) + fibonacci(n-1)
-- esto devuelve ej: fivonacci 4 = 3, 3 es el ultimo elemento de esta serie de fibonacci

main :: IO () 
-- main es una funcion de tipo IO (entrada y salida)
-- y no devuelve ningun valor util, reorna una tupla vacía: ()
main = do
    fibonacci 3
    -}

{-
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)
-}

-- Genera la lista de términos desde 0 hasta n
fibonacciSerie :: Int -> [Int]
fibonacciSerie n = [fibonacci i | i <- [0..n]]

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)