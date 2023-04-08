{-# OPTIONS -Wall #-}

-- 22. Definir la función celsiusToFahr : Num→ Num, pasa una temperatura en
-- grados Celsius a grados Fahrenheit. Para realizar la conversión hay que
-- multiplicar por 1.8 y sumar 32.
celsiusToFahr :: (Fractional a) => a -> a
celsiusToFahr cel = cel * 1.8 + 32
