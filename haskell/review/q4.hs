-- Escreva uma função recursiva que calcule a divisão de dois numeros inteiros e retorne a parte inteira
-- e o resto da divisão em uma tupla. A função deve possuir a assinatura abaixo e não é permitido o uso
-- de funções pre-definidas na linguagem (como o div ou mod). Se necessário, você pode criar funções
-- auxiliares.

divisao :: Int -> Int -> (Int, Int)
divisao x y = ((inteira x y), (resto x y))

inteira :: Int -> Int -> Int
inteira x y
  | x < y = 0
  | x == y = 1
  | otherwise = calcula x y 1

resto :: Int -> Int -> Int
resto x y
  | x == y = 0
  | x > y = x - (y * (calcula x y 1))
  | otherwise = x

calcula :: Int -> Int -> Int -> Int
calcula x y z
  | x == y = 1
  | x < y = calcula y x z
  | y * z == x = z
  | y * z < x = calcula x y (z + 1)
  | otherwise = z - 1