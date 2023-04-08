{-# OPTIONS -Wall #-}

-- Ejercicio 14
-- Escribí una función que dados dos valores, calcule su promedio.
avg :: Fractional a => a -> a -> a
avg x y = (x + y) / 2
