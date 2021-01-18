-- O fatorial duplo de um número natural n é o produto de todos os números de 1 (ou 2) até n,
-- contados de 2 em 2. Por exemplo, o fatorial duplo de 8 é 8*6*4*2 = 384 e o fatorial duplo de
-- 7 é 7*5*3*1 = 105. Defina uma função recursiva em Haskell para calcular o fatorial duplo de um
-- número positivo. A função deve possuir a assinatura abaixo e, se necessário, você pode usar funções
-- auxiliares.

fatorial_duplo :: Integer -> Integer
fatorial_duplo 0 = 1
fatorial_duplo 1 = 1
fatorial_duplo 2 = 2
fatorial_duplo n = n * fatorial_duplo (n - 2)