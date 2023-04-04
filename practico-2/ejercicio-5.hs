-- ================================================================================================

-- Ejercicio 5
-- Una función de fold es aquella que
-- dada una lista devuelve un valor resultante
-- de combinar los elementos de la lista.

-- ================================================================================================

-- Ejercicio 5.a
-- todosMenores10 :: [Int] -> Bool, que dada una lista devuelve True
-- si ésta consiste sólo de números menores que 10.

todosMenores10 :: [Int] -> Bool

todosMenores10 [] = True
todosMenores10 (x:xs) | x < 10 = todosMenores10 xs -- Deberia devolver True si el resto de valores de la lista son menores a 10
                      | x >= 10 = False

-- ================================================================================================

-- Ejercicio 5.b
-- hay0 :: [Int] -> Bool, que dada una lista decide si existe algún 0 en ella.

hay0 :: [Int] -> Bool

hay0 [] = False
hay0 (x:xs) | x == 0 = True
            | x /= 0 = hay0 xs

-- ================================================================================================

-- Ejercicio 5.c
-- sum :: [Int] -> Int, que dada una lista devuelve la suma de todos sus elementos.

sumar :: [Int] -> Int

sumar [] = 0
sumar (x:xs) = x + sumar xs

-- ================================================================================================