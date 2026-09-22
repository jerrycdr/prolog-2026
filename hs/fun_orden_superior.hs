
variable :: String
variable = "Hola mundo desde Haskell"

-- putStrLn variable -da error porque en archivos hs solo se pueden definir variables, tipos o funcioes

{-
- IO para realizar operaciones de entrada y salida
- el main no devuleve ningun valor

-- se usa el bloque do para realizar multiples instrucciones

-- FUNCIONES DE ORDEN SUPERIOR HOF

-}

-- funcion de orden superior sobre una lista
lista :: [Int]
lista =  [1..10]

main :: IO ()
main = do
    putStrLn variable
    putStrLn ("esto es una cadena, var value: " ++ variable )

    print lista -- print funciona con listas y numeros, putStrLn con texto
    print $ map ( * 2) lista

    putStrLn "Ahora imprimiremos la lista con elementos del 1 al 10, pero restandoles 99 a cada uno"
    print (map (- 99) lista)
    print (map (+(-99)) lista)
