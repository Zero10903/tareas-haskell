{-# OPTIONS -Wall #-}

-- Ejercicio 17
-- Dar el tipo de las siguientes funciones

-- a) g.y ≐ 8 * y
g :: Num a => a -> a
g y = 8 * y

-- b) h.z.w
h :: Num a => a -> a -> a
h z w = z + w

-- c) j.x ≐ x ⩽ 0
j :: (Ord a, Num a) => a -> Bool
j x = x <= 0
