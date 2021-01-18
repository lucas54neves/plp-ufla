impar :: Int -> Bool
impar n
  | (mod n 2) == 0 = False
  | otherwise = True

soma_impares :: [Int] -> Int
soma_impares [] = 0
soma_impares (h:t)
  | (impar h) = h + soma_impares t
  | otherwise = soma_impares t

calcula_impares :: Int -> Int
calcula_impares numero = soma_impares[1..numero]