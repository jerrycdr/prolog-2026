-- De forma recursiva acontar en Haskell, y en secuencial en JavaScript
-- cuantos son positsivos: funcion
-- cuantos son negativos: funcion
-- cuantos elementos existen: funcion
-- cual es el mayor

list :: [Int]
list = [-2,-50,70,101,2,4,-6,-8,0]
-- list = [-100,-99,-98,-97,-95,-94,-1]
list2 :: [Int]
list2 = [1..10]
l2 :: [Int]
l2 = []

{-
countPos :: [Int] -> IO ()
countPos l =
    print l
    
    if head l > 0
        
        then 1
        else countPos[tail l]
    -}
-- Metodo par imprimir listas ------------------------------
printList :: [Int] -> IO ()
printList l = 
    print l

-- metodo para contar elementos ---------------------

-- metodo para contar los elementos de una lista de forma recursiva
{- 
countList :: Int -> [Int] -> Int
countList n [] = 0
countList n list = countList (n + 1) (tail list)

contar :: [Int] -> Int -> ([Int] -> Int) -- esto esta mal, devuelve una funcion -> no una tupla con elementos
contar [] n = [] n
contar [list] n = if head list /= [] -- los corchetes significan "una lista que contiene exactamente un elemento llamado list"
    -- Para una lista genérica se usa un nombre normal (como xs) o el patrón (x:xs).    
    -- Uso incorrecto de head list: head extrae el primer elemento de una lista (un número Int).
    -- Después intentas hacer Int /= [] (comparar un número con una lista vacía), 
    -- lo cual arroja un error de compilación.
    -- Haskell entiende (contar ... n) + 1 en lugar de pasarle n + 1 como argumento. Debe ir entre paréntesis: (n + 1).
    -- Prioridad de la suma. Haskell evalúa las funciones de izquierda a derecha. 
    then contar (tail list)  n+1
    else contar [] n
-}

-- ===============================================================================================
-- FUNCION PAR CONTAR LOS ELEMENTOS
-- ahora lo resolvemos bien espero
-- vamos con la function signature
-- la signatura recive la lista, el contador acumulado y devuelve la tupla
contar :: [Int] -> Int -> ([Int], Int)
-- caso base (este si lo tenia bien)
-- Caso base: Si la lista está vacía, devolvemos la lista vacía [] y el contador actual 'n'
contar [] n = ([], n)
-- Caso recursivo: Si la lista tiene elementos, separamos el primero (x) del resto (xs),
-- sumamos 1 al contador 'n' y llamamos a la función con el resto de la lista (xs)
contar (x:xs) n = contar xs (n + 1)

-- contarWrap :: [Int] -> Int
-- contarWrap xs 0 =  xs

-- ===================================================================================
    -- El usuario solo pasa la lista, y recibe la tupla con la lista vacía y el total
contarWrap :: [Int] -> ([Int], Int)
contarWrap xs = contarRec xs 0
  where
    -- Esta es la función interna que hace el trabajo sucio con el contador
    contarRec [] n     = ([], n)
    contarRec (y:ys) n = contarRec ys (n + 1)

-- ===================================================================================
-- FUNCION PARA CONTAR LOS POSITIVOS DE UNA LISTA DE FORMA RECURSIVA
pos :: [Int] -> Int -> ([Int], Int)
pos [] n = ([], n)
-- pos (x:xs) n = filter (a > 0) xd
pos (x:xs) n = if x > 0
    then pos xs (n + 1)
    else pos xs n

-- ===================================================================================
    -- FUNCION PAR ACONTAR LOS POSITIVOS USANDO HOF
--contarPositivos :: Int -> [Int] -> (Int, [Int])
--contarPositivos count [] = (count, [])
--contarPositivos count (x:xs) = filter (n => n > 0) 

{-
buscaMayor :: [Int] -> Int -> ([Int], Int)
buscaMayor [] mayor = ([], mayor)
buscaMayor (x:xs) mayor = if (head xs) > mayor
    then buscaMayor (tail xs) (head xs)
    else buscaMayor (tail xs) mayor
-}

-- ===================================================================================
-- ===================================================================================

-- De forma recursiva contar en Haskell, y en secuencial en JavaScript
-- cuantos son positsivos: funcion
-- cuantos son negativos: funcion
-- cuantos elementos existen: funcion
-- cual es el mayor

-- ===================================================================================
-- CONTAR POSITIVOS
contarP :: [Int] -> Int -> ([Int], Int) --- firma de la f
contarP [] n = ([], n)
contarP (x:xs) n = if x <= 0
    then contarP xs n
    else contarP xs (n + 1) -- si no es =0 ni menor entonces es positivo (antes tenia la logica invertida)

-- CONTAR NEGATIVOS
contarN :: [Int] -> Int -> ([Int], Int)
contarN [] n = ([], n)
contarN (x:xs) n = if x < 0
    then contarN xs (n + 1)
    else contarN xs n

-- CONTAR TOTAL
contarTotal :: [Int] -> Int -> ([Int], Int)
contarTotal [] n = ([], n) -- contarTotal [] 0 = ([], 0)
contarTotal (x:xs) n = if (x:xs) /= [] --(x:xs)
    then contarTotal (xs) (n+1)
    else contarTotal [] n -- n

-- CUAL ES EL MAYOR
buscaMayor :: [Int] -> Int -> ([Int], Int)
buscaMayor [] mayor = ([], mayor)
buscaMayor (x:xs) mayor = if x > mayor
    then buscaMayor xs x 
    else buscaMayor xs mayor

-- obtener el primer elemento

-- CUAL ES EL MENOR


main :: IO ()
main = do
   -- printList list
   -- printList list2
   putStrLn "Lista:"
   print list
   putStrLn "\n========================================"
   putStrLn "Cantidad de elementos en la lista:"
   print $ contarTotal list 0
   putStrLn "Cantidad de POSITIVOS(+) en la lista:"
   print (contarP list 0)
   putStrLn "Cantidad de NEGATIVOS(-) en la lista:"
   print (contarN list 0)
   putStrLn "Buscamos el elemento MAYOR:"
   --- print (buscaMayor list 0) -- si la lista contiene solo negativos, dara error
   print (buscaMayor list (-9999))
