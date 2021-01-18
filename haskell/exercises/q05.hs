import Questao_04

mmc_lista :: [Int] -> Int
mmc_lista [x] = x
mmc_lista (i:j) = mmc i (mmc_lista j)