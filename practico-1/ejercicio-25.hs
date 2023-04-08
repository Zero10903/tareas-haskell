{-# OPTIONS -Wall #-}

-- 25. Definí las funciones que describimos a continuación, luego implementalas
-- en haskell

-- a) segundo3 : (Num, Num, Num) → Num, que dada una terna de enteros devuelve
-- su segundo elemento.
segundo3 :: (Integral a) => (a, a, a) -> a
segundo3 (_, x, _) = x

-- b) ordena : (Num, Num) → (Num, Num), que dados dos enteros los ordena de
-- menor a mayor.
ordena :: (Integral a) => (a, a) -> (a, a)
ordena (x, y) = (min x y, max x y)

-- c) rangoPrecioParametrizado : Num → (Num, Num) → String que dado un número x,
-- que representa el precio de un producto, y un par (menor, mayor) que
-- represente el rango de precios que uno espera encontrar, retorne “muy barato”
-- si x está por debajo del rango, “demasiado caro” si está por arriba del
-- rango, “hay que verlo bien” si el precio está en el rango, y “esto no puede
-- ser!” si x es negativo.
rangoPrecioParametrizado :: (Ord a, Num a) => a -> (a, a) -> String
rangoPrecioParametrizado x (menor, mayor)
  | x < 0 = "esto no puede ser!"
  | x < menor = "muy barato"
  | x <= mayor = "hay que verlo bien"
  | otherwise = "demasiado caro"

-- d) mayor3 : (Num, Num, Num) → (Bool, Bool, Bool), que dada una una terna de
-- enteros devuelve una terna de valores booleanos que indica si cada uno de los
-- enteros es mayor que 3. Por ejemplo: mayor3.(1, 4, 3) = (False, True, False)
-- y mayor3.(5, 1984, 6) = (True, True, True)
mayor3 :: (Integral a) => (a, a, a) -> (Bool, Bool, Bool)
mayor3 (x, y, z) = (x > 3, y > 3, z > 3)

-- e) todosIguales : (Num, Num, Num) → Bool que dada una terna de enteros
-- devuelva True si todos sus elementos son iguales y False en caso contrario.
-- Por ejemplo: todosIguales.(1, 4, 3) = False y todosIguales.(1, 1, 1) = True
todosIguales :: (Integral a) => (a, a, a) -> Bool
todosIguales (x, y, z) = x == y && y == z
