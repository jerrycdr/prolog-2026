
-- funciones de orden superior

-- ejemplo
aplicarDoble :: (Int -> Int) -> Int -> Int
aplicarDoble function number =
    -- function $ function number -- el operador $ le dice que efectua right side first
    function (function number)

doble :: Int -> Int
doble x = x * 2

saldoImpuesto :: (Double -> Double) -> Double -> Double
saldoImpuesto f bsalary = 
    -- let bsalary
    f $ bsalary * 0.84 -- salario = salario - (salario * 0.16) // impuesto

salarioBono :: Double -> Double
salarioBono salary = 
    salary * 1.2 -- mas un 20%

-- -----------------------------------------
-- HOF aplicar una funcion 3 veces a un valor
aplicarTres :: (Double -> Double) -> Double -> Double
aplicarTres f n =
    f (f (f n))

suma1 :: Double -> Double
suma1 n =
    n + 1

-- --------------------------------------
-- funcion normal para calcular fibonacci
-- fibonacci :: Int -> Int | String
{-
fibonacci :: Int -> Either String Int
fibonacci n =
    if n < 0 
        then 
            Left "No se peude hacer la sucesión de fibonacci con números negativos"
        else
            if n == 0
                then Right 1
                else Right fibonacci(n - 1) + fibonacci (n - 2)
 -}




            

