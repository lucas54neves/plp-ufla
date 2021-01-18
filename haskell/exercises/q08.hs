produto_intervalo :: [Int] -> Int
produto_intervalo [x] = x
produto_intervalo (i:j) = i * (produto_intervalo j)