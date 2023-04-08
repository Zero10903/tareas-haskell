{-# OPTIONS -Wall #-}

-- 23. Definir la función fahrToCelsius : Num→ Num, la inversa de la anterior. Para
-- realizar la conversión hay que primero restar 32 y después dividir por 1.8.
fahrToCelsius :: (Fractional a) => a -> a
fahrToCelsius fahr = (fahr - 32) / 1.8
