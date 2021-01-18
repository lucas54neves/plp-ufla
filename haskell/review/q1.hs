-- A raiz quadrada inteira de um número inteiro positivo n é o maior número inteiro cujo quadrado
-- é menor ou igual a n. Por exemplo, a raiz quadrada inteira de 15 é 3, e a raiz quadrada inteira
-- de 16 é 4. Defina uma função recursiva em Haskell para calcular a raiz quadrada inteira de um
-- número. Não é permitido o uso da função sqrt. A função deve possuir a assinatura abaixo e, se
-- necessário, você pode usar funções auxiliares.

calcula_raiz :: Integer -> Integer -> Integer
calcula_raiz x y
  | raiz == y = x
  | raiz < y = calcula_raiz (x + 1) y
  | otherwise = x - 1
  where raiz = x * x

raiz_inteira :: Integer -> Integer 
raiz_inteira n = calcula_raiz 1 n