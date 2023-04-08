{-# OPTIONS -Wall #-}

-- 20. Definir la función esBisiesto: Num→ Bool, que indica si un año es
-- bisiesto. Un año es bisiesto si es divisible por 400 o es divisible por 4
-- pero no es divisible por 100.
esBisiesto :: (Integral a) => a -> Bool
esBisiesto x = mod x 400 == 0 || (mod x 4 == 0 && mod x 100 /= 0)
