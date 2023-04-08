{-# OPTIONS -Wall #-}

-- 19. Definir la función esMultiploDe : Num→ Num→ Bool, que devuelve True si el
-- segundo es múltiplo del primero. Ejemplo: esMultiploDe 3 12 = True
esMultiploDe :: (Integral a) => a -> a -> Bool
esMultiploDe x y = mod y x == 0
