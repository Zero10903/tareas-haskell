-- ====================================================================================================
-- Ejercicio 3
-- Una función de filter es aquella que dada una lista devuelve otra lista cuyos elementos son los 
-- elementos de la primera que cumplan una determinada condición, en el mismo orden y con las mismas 
-- repeticiones (si las hubiere).
-- ====================================================================================================

-- Ejercicio 3.a
-- soloPares :: [Int]-> [Int], que dada una lista de enteros xs devuelve una lista sólo con los 
-- números pares contenidos en xs, en el mismo orden y con las mismas repeticiones (si las hubiera).
-- Por ejemplo: soloPares [3,0,-2,12] = [0,-2, 12]

soloPares :: [Int]-> [Int]

soloPares [] = []
soloPares (x:xs) | mod x 2 == 0 = x : soloPares xs
                 | mod x 2 /= 0 = soloPares xs

-- ====================================================================================================

-- Ejercicio 3.b
-- mayoresQue10 :: [Int]-> [Int], que dada una lista de enteros xs devuelve una lista sólo con los
-- números mayores que 10 contenidos en xs, Por ejemplo: mayoresQue10 [3,0,-2, 12] = [12]

mayoresQue10 :: [Int]-> [Int]

mayoresQue10 [] = []
mayoresQue10 (x:xs) | x > 10 = x : mayoresQue10 xs
                    | x <= 10 = mayoresQue10 xs

-- ====================================================================================================

-- Ejercicio 3.c
-- mayoresQue :: Int-> [Int]-> [Int], que dado un entero n y una lista de enteros xs devuelve una
-- lista sólo con los números mayores que n contenidos en xs
-- Por ejemplo: mayoresQue 2 [3,0,-2, 12] = [3,12]

mayoresQue :: Int-> [Int]-> [Int]

mayoresQue lim [] = []
mayoresQue lim (x:xs) | x > lim = x : mayoresQue lim xs
                      | x <= lim = mayoresQue lim xs

-- ====================================================================================================