{-# OPTIONS -Wall #-}

-- 21. Definir la función dispersion : Num→ Num→ Num→ Num, que toma los tres
-- valores y devuelve la diferencia entre el más alto y el más bajo. Ayuda:
-- extender max y min a tres argumentos, usando las versiones de dos
-- elementos. De esa forma se puede definir dispersión sin escribir ninguna
-- guarda (las guardas están en max y min, que estamos usando).
max3 :: (Ord a) => a -> a -> a -> a
max3 x y z = max x (max y z)

min3 :: (Ord a) => a -> a -> a -> a
min3 x y z = min x (min y z)

dispersion :: (Ord a, Num a) => a -> a -> a -> a
dispersion x y z = max3 x y z - min3 x y z
