zipando2 :: [a] -> [a] -> [(a, a)]
zipando2 lista1 lista2 = [(x,y) | x <- lista1, y <- lista2]

zipando3 :: [a] -> [a] -> [a] -> [(a, a, a)]
zipando3 lista1 lista2 lista3 = [(x,y,z) | x <- lista1, y <- lista2, z <- lista3]

zipando4 :: [a] -> [a] -> [a] -> [a] -> [(a, a, a, a)]
zipando4 lista1 lista2 lista3 lista4 = [(w,x,y,z) | w <- lista1, x <- lista2, y <- lista3, z <-lista4]