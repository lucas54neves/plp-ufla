media :: [Float] -> Float
media (h:t) = s / q
  where
    s = soma (h:t)
    q = quantidade (h:t)

soma :: [Float] -> Float
soma [um] = um
soma (h:t) = h + soma t

quantidade :: [Float] -> Float
quantidade [um] = 1
quantidade (h:t) = 1 + quantidade t

menores :: [Float] -> [Float]
menores [] = []
menores (h:t)
  | h <  media (h:t) = h : menores t
  | otherwise = menores t