{-# OPTIONS -Wall #-}

-- 24. Definir la función haceFrioF : Num→ Bool, indica si una temperatura
-- expresada en grados Fahrenheit es fría. Decimos que hace frío si la
-- temperatura es menor a 8 grados Celsius.

fahrToCelsius :: (Fractional a) => a -> a
fahrToCelsius fahr = (fahr - 32) / 1.8

haceFrioF :: (Fractional a, Ord a) => a -> Bool
haceFrioF fahr = fahrToCelsius fahr < 8
