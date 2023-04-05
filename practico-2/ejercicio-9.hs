-- ================================================================================================

-- Ejercicio 9
-- Definí funciones por recursión para cada una de las siguientes descripciones.

-- ================================================================================================

-- Ejercicio 9.a
-- maximo :: [Int] -> Int, que calcula el máximo elemento de una lista de enteros.

maximo :: [Int] -> Int

maximo [x] = x
maximo (x:xs) | x >= maximo xs = x
              | x < maximo xs = maximo xs

-- ================================================================================================

-- Ejercicio 9.b
-- sumaPares :: [(Int, Int)] -> Int, que dada una lista de pares de números, devuelve la
-- sumatoria de todos los números de todos los pares.

sumaPares :: [(Int, Int)] -> Int

sumaPares [] = 0
sumaPares ((a, b):xs) = a + b + sumaPares xs

-- ================================================================================================

-- Ejercicio 9.c
-- todos0y1 :: [Int] -> Bool, que dada una lista devuelve True si ésta consiste sólo de 0s y 1s.

todos0y1 :: [Int] -> Bool

todos0y1 [] = True
todos0y1 (x:xs) | x == 0 || x == 1 = todos0y1 xs
                | x /= 0 && x /= 1 = False

-- ================================================================================================

-- Ejercicio 9.d
-- quitar0s :: [Int] -> [Int] que dada una lista de enteros devuelve la lista
-- pero quitando todos los ceros.

quitar0s :: [Int] -> [Int]

quitar0s [] = []
quitar0s (x:xs) | x == 0 = quitar0s xs
                | x /= 0 = x : quitar0s xs

-- ================================================================================================

-- Ejercicio 9.e
-- ultimo :: [a] -> a, que devuelve el último elemento de una lista.

ultimo :: [a] -> a

ultimo [x] = x
ultimo (x:xs) = ultimo xs 
-- ================================================================================================

-- Ejercicio 9.f
-- repetir :: Int-> Int-> [Int], que dado un número n mayor o igual a 0 y un número k
-- arbitrario construye una lista donde k aparece repetido n veces.

repetir :: Int -> Int-> [Int]

repetir 0 k = []
repetir n k | n > 0 = k : repetir (n - 1) k
            | n < 0 = []

-- ================================================================================================

-- Ejercicio 9.g
-- concat :: [[a]] -> [a] que toma una lista de listas y devuelve la concatenación de todas ellas.

concatenacion [] = []
concatenacion (x:xs) = x ++ concatenacion xs

-- ================================================================================================

-- Ejercicio 9.h
-- rev :: [a] -> [a] que toma una lista y devuelve una lista con los mismos elementos
-- pero en orden inverso.

rev :: [a] -> [a]

rev [] = []
rev (x:xs) = rev xs ++ [x]

-- ================================================================================================