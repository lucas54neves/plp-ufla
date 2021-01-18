soma_inteiros :: Int -> Int -> Int
soma_inteiros inicio fim = soma_intermediarios [inicio..fim]

soma_intermediarios :: [Int] -> Int
soma_intermediarios [] = 0
soma_intermediarios (i:j) = i + soma_intermediarios j