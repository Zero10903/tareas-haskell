-- ================================================================================================

-- Ejercicio 7
-- Una función de tipo unzip es aquella que
-- dada una lista de tuplas devuelve una lista de alguna
-- de las proyecciones de la tupla.

-- Definir recursivamente la función apellidos :: [(String, String, Int)] -> [String].

apellidos :: [(String, String, Int)] -> [String]

apellidos [] = []
apellidos ((a, b, c) : xs) = b : apellidos xs

-- ================================================================================================