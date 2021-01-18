-- Crie uma função em Haskell que encontra o menor elemento de uma lista genérica. Não é permitido o
-- uso de funções pré-definidas na linguagem com mesmo propósito. A função deve possuir a assinatura
-- abaixo e, se necessário, você pode usar funções auxiliares.

menor :: (Ord a) => [a] -> a
menor [um] = um
menor (h:t)
  | h < (menor t) = h
  | otherwise = menor t