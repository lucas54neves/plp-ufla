concatenar :: [a] -> [a] -> [a]
concatenar [] [] = []
concatenar [] lista = lista
concatenar [um] lista = um : lista
concatenar (i:j) lista = i : concatenar j lista
