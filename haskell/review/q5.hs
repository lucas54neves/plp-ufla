-- Criar uma função em Haskell para inverter a sequência dos conteúdos de uma lista genérica
-- (sem usar reverse). A função deve possuir a assinatura abaixo e, se necessário, você pode
-- usar funções auxiliares.
inverte :: [a] -> [a]
inverte [] = []
inverte (h:t) = (inverte t) ++ [h]