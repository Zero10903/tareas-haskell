import System.Win32 (COORD(xPos))
-- ================================================================================================

-- Ejercicio 8
-- Definí recursivamente los operadores básicos de listas: length, !!, take, drop, ++.
-- Para los operadores take y drop deberás hacer recursión en ambos parámetros, en el
-- parámetro lista y en el parámetro numérico.

-- ================================================================================================
-- length
-- ================================================================================================

longitud :: [a] -> Int

longitud [] = 0
longitud (x:xs) = longitud xs + 1

-- ================================================================================================
-- !!
-- ================================================================================================

posicion :: [a] -> Int -> a

posicion (x:xs) 0 = x
posicion (x:xs) z | z > 0 = posicion xs (z - 1)
                  | z < 0 = x

-- ================================================================================================
-- take
-- ================================================================================================

taking :: Int -> [a] -> [a]

taking count [] = []
taking 0 (x:xs) = []
taking count (x:xs) | count > 0 = x : taking (count - 1) xs
                    | count < 0 = []

-- ================================================================================================
-- drop
-- ================================================================================================

dropping :: Int -> [a] -> [a]

dropping count [] = []
dropping 0 (x:xs) = x:xs
dropping count (x:xs) | count > 0 = dropping (count - 1) xs
                      | count < 0 = x:xs

-- ================================================================================================
-- ++
-- ================================================================================================

concatenar :: [a] -> [a] -> [a]

concatenar [] [] = []
concatenar [] (y:ys) = y:ys
concatenar (x:xs) [] = x:xs
concatenar (x:xs) (y:ys) = x : y : concatenar xs ys

-- ================================================================================================