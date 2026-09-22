
{-

-- funciones infijas, son aquellas con la forma: value operador value
-- IRD
- las funciones prefijas tienen el operador al inicio: RID

- DECLARAR FUNCIONES ======================================================================

- nombre_funcion, espacio, value1,espacio, value2, espacio, valueN, ...
- las funciones no necesitan estar en ningun orden.
- la aplicacion de funciones tiene la maxima prioridad, incluso mayor que los ()
- recordar la jerarquia de operaciones, example:
ghci> succ 9 + max 99 101 + 1
112

ghci> succ 9 * 10
100

ghci> succ (9 * 10)
91

- Si una función toma dos parámetros también podemos 
- llamarla como una función infija rodeándola con acentos abiertos.
ghci> div 9 3
3
ghci> 9 `div` 3
3

ghci> mod 92 10
2
ghci> 92 `mod` 10
2

-}

-- la funcion succ N, devuleve el sucesor del parametro enviado

doble x = x + x -- alt name: doubleMe
doubleMe x = x + x

triple x = x * 3

-- doubleUs x y = x*2 + y*2
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
    then x
    else x * 2

-- sentencia if =======================================================================0
{- 
- la sentencia if debe llevar else de manera obligatoria


-}

-- Firma de tipo: recibe dos Double y retorna un Double 
multiplicar :: Double -> Double -> Double 
multiplicar x y = x * y 

-- Uso de condicionales (if-then-else siempre requiere el else) 
esMayorDeEdad :: Int -> String 
esMayorDeEdad edad = if edad >= 18 
    then "Mayor" 
    else "Menor" 
    
-- Evaluación mediante Guardas (|)
clasificarNota :: Double -> String 
clasificarNota nota | nota >= 9.0 = "Excelente" | nota >= 7.0 = "Aprobado" | otherwise = "Reprobado"

-- area de cuadrado/rectangulo
areaRectangulo :: Double -> Double -> Double
-- areaRectangulo x y = x * y
areaRectangulo base altura = base * altura

-- ===================================================
-- funciona calcular salario quitando impuestos + un bono
calcularSalario :: Double -> Double -> Double
calcularSalario base bono = 
    let impuesto = if base > 20_000
            then base * 0.16
            else base * 0.10
        salarioSinBono = base - impuesto
    in salarioSinBono - impuesto

-- =====================================================
-- EJERCICIOS

-- funcion que calcula si un numero es positivo
esCero :: Double -> Bool
esCero num = if num == 0
    then True
    else False

-- eleva un numero dado a la cuarta potencia
elevaCuarta :: Double -> Double
-- elevaCuarta numero = numero ** 4
elevaCuarta numero = numero ^ 4

-- 1. ^ base cualquier numero, exponente positivo, retorna mismo tipo que la base
-- 2. ^^ base numeros fraccionarios, exponente solo enteros (incluye negativos), retorna mismo tipo que la base
-- 3. ** base numeros de punto flotante, esponente nums de punto flotante, retorna mismo tipo que la base

