{-# OPTIONS -Wall #-}

-- Ejercicio 16
-- Dar el tipo de las funciones del ejercicio 13 y el ejercicio 14

-- a) f.x ≐ 5 * x
f :: Num a => a -> a
f x = 5 * x

-- b) duplica.a ≐ a + a
duplica :: Num a => a -> a
duplica a = a + a

-- c) por2.y ≐ 2 * y
por2 :: Num a => a -> a
por2 y = 2 * y

-- d) multiplicar.zz.tt ≐ zz * tt
multiplicar :: Num a => a -> a -> a
multiplicar zz tt = zz * tt
