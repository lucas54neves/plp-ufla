type Pessoa = (String, Int, Float, Char)

pess :: Int -> Pessoa
pess x
  | x==1 = ("Rosa", 27, 1.66,'F')
  | x==2 = ("João", 26, 1.85,'M')
  | x==3 = ("Maria", 67, 1.55,'F')
  | x==4 = ("Jose", 48, 1.78, 'M')
  | x==5 = ("Paulo", 24, 1.93, 'M')
  | x==6 = ("Clara", 38, 1.70,'F')
  | x==7 = ("Bob", 12, 1.45, 'M')
  | x==8 = ("Rosana", 31, 1.58,'F')
  | x==9 = ("Daniel", 75, 1.74, 'M')
  | x==10 = ("Jocileide", 21, 1.69,'F')
  | otherwise = ("Acabou!",0, 0.0, 'x')

idade :: Pessoa -> Int
idade (_, i, _, _) = i

sexo :: Pessoa -> Char
sexo (_, _, _, x) = x

quantidade_maior_idade :: [Pessoa] -> Int
quantidade_maior_idade [] = 0
quantidade_maior_idade (h:t)
  | (idade h) >= 18 = 1 + quantidade_maior_idade t
  | otherwise = quantidade_maior_idade t

idade_media :: [Pessoa] -> Int
idade_media lista = div (soma_idade lista) (total_idade lista)

soma_idade :: [Pessoa] -> Int
soma_idade [um] = idade um
soma_idade (h:t) = (idade h) + (soma_idade t)

total_idade :: [Pessoa] -> Int
total_idade [um] = 1
total_idade (h:t) = 1 + (total_idade t)

masculino_idade :: [Pessoa] -> Int
masculino_idade [] = 0
masculino_idade (h:t)
  | (idade h >= 25) && (sexo h == 'M') = 1 + masculino_idade t
  | otherwise = masculino_idade t

calcula_maiores_idade :: Int -> Int
calcula_maiores_idade numero = quantidade_maior_idade [pess x | x <- [1..numero]]

calcula_media_idade :: Int -> Int
calcula_media_idade numero = idade_media [pess x | x <- [1..numero]]

calcula_numero :: Int -> Int
calcula_numero numero = masculino_idade [pess x | x <- [1..numero]]