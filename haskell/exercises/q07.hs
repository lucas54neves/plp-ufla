import Questao_06

mdc_lista :: [Int] -> Int
mdc_lista [x] = x
mdc_lista (i:j) = mdc i (mdc_lista j)