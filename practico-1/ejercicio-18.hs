{-# OPTIONS -Wall #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use even" #-}

-- Ejercicio 18
-- Definí las funciones que describimos a continuación, luego implementalas en
-- haskell. Por ejemplo:
-- Enunciado: signo : Int → Int, que dado un entero retorna su signo, de la
-- siguiente forma: retorna 1 si x es positivo, -1 si es negativo y 0 en
-- cualquier otro caso.
-- En haskell se escribe así:
-- sgn :: Int -> Int
-- sgn x | x>0 = 1
--       | x<0 = -1
--       | x==0 = 0

-- a) entre0y9 : Int → Bool, que dado un entero devuelve True si el entero se
-- encuentra entre 0 y 9.
entre0y9 :: Int -> Bool
entre0y9 x = 0 <= x && x <= 9

-- b) rangoPrecio : Int → String, que dado un número que representa el precio
-- de una computadora, retorne “muy barato” si el precio es menor a 2000,
-- “demasiado caro” si el precio es mayor que 5000, “hay que verlo bien” si el
-- precio está entre 2000 y 5000, y “esto no puede ser!” si el precio es
-- negativo
rangoPrecio :: Int -> String
rangoPrecio x
  | x < 0 = "esto no puede ser!"
  | x < 2000 = "muy barato"
  | x <= 5000 = "hay que verlo bien"
  | otherwise = "demasiado caro"

-- c) absoluto : Int → Int, que dado un entero retorne su valor absoluto.
absoluto :: Int -> Int
absoluto x
  | x < 0 = -x
  | otherwise = x

-- esMultiplo2 : Int → Bool, que dado un entero n devuelve True si n es múltiplo
-- de 2. Ayuda: usar mod, el operador que devuelve el resto de la división.
esMultiplo2 :: Int -> Bool
esMultiplo2 x = mod x 2 == 0
