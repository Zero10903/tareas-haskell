-- ============================================================================

-- Ejercicio 4
-- Una función de map es aquella que dada una lista devuelve otra lista
-- cuyos elementos son los que se obtienen de aplicar una función a cada
-- selemento de la primera en el mismo orden y con las mismas
-- sssrepeticiones (si las hubiere).

-- ============================================================================

-- Ejercicio 4.a
-- sumar1 :: [Int]-> [Int], que dada una lista de enteros le suma uno
-- a cada uno de sus elementos. Por ejemplo: sumar1 [3,0,-2] = [4,1,-1]

sumar1 :: [Int]-> [Int]

sumar1 [] = []
sumar1 (x:xs) = x + 1 : sumar1 xs

-- ============================================================================

-- Ejercicio 4.b
-- duplica :: [Int]-> [Int], que dada una lista de enteros duplica cada
-- uno de sus elementos. Por ejemplo: duplica [3,0,-2] = [6,0,-4]

duplica :: [Int]-> [Int]

duplica [] = []
duplica (x:xs) = x * 2 : duplica xs

-- ============================================================================

-- Ejercicio 4.c
-- multiplica :: Int-> [Int]-> [Int], que dado un número n y una lista,
-- multiplica cada uno de los elementos por n.
-- Por ejemplo: multiplica 3 [3,0,-2] = [9,0,-6]

multiplica :: Int-> [Int]-> [Int]

multiplica a [] = []
multiplica a (x:xs) = a * x : multiplica a xs

-- ============================================================================