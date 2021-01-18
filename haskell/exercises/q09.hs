calcula :: Int -> Int -> Int
calcula atual n
  | raiz <= n = calcula (atual + 1) n
  | otherwise = atual - 1
  where raiz = atual * atual

raiz_quadrada :: Int -> Int
raiz_quadrada n = calcula 1 n