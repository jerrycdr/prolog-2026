
-- 1. evalua si un numero es negativo, positivo o cero

esCero :: Double -> Bool
esCero n = if n == 0
    then True
    else False

esPositivo :: Double -> Bool
esPositivo n = if n > 0
    then True
    else False

esNegativo :: Double -> Bool 
esNegativo n = if n < 0
    then True
    else False

evaluaSigno :: Double -> String
evaluaSigno n = if esCero n
    then "El numero es Cero (0)"
    else if esPositivo n
        then "El numero es Positivo (+)"
        else "El numero es Negativo (-)"

-- 2. funcion que eleva a la cuarta potencia un numero

eleva :: Double -> Double
eleva n = n ** 4

-- 3. funcion que calcula si un numero es mayor a 18
mayorA18 :: Double -> String
mayorA18 n = if n > 18
    then "El numero es MAYOR a 18"
    else "El numero NO es mayor a 18"


-- ==========================================================

-- 1. ejercicio para calcular el salario de un trabajador luego de impuestos
salarioNeto :: Double -> Double
salarioNeto salario = salario*0.84

-- 2. calcular salario despues de un bono, despues un impuesto de 10%
salarioBono :: Double -> Double -> Double
salarioBono salario bono = (salario + bono)*0.9