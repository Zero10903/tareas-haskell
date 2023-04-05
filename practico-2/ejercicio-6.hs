-- ================================================================================================

-- Ejercicio 6
-- Una función de tipo zip es aquella que dadas dos listas devuelve una lista de pares donde el
-- primer elemento de cada par se corresponde con la primera lista, y el segundo elemento de
-- cada par se corresponde con la segunda lista.

-- Definir recursivamente la función repartir :: [String] -> [String] -> [(String,String)]

repartir :: [String] -> [String] -> [(String,String)]

repartir [] [] = []
repartir (x:xs) (y:ys) = (x,y) : repartir xs ys

-- ================================================================================================