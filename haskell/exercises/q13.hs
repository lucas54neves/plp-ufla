type Nome = String
type Curso = String
type Periodo = Int
type Nota = Float
type Aluno = (Nome, Curso, Periodo, Nota)
type Disciplina = [Aluno]

alunos :: Int -> Aluno
alunos matricula
  | matricula == 1 = ("Rodrigo", "S.Inf.", 3, 6.0)
  | matricula == 2 = ("Joao", "Eng.Comp.", 5, 5.0)
  | matricula == 3 = ("Lucas", "C.Comp.", 8, 3.5)
  | matricula == 4 = ("Ana", "C.Comp.", 5, 8.0)
  | matricula == 5 = ("Maria", "C.Comp.", 7, 9.5)
  | matricula == 6 = ("Paulo", "C.Comp", 6, 6.0)
  | matricula == 7 = ("Jose", "S.Inf.", 8, 7.0)
  | matricula == 8 = ("Eduarda", "C.Comp.", 4, 1.0)
  | matricula == 9 = ("Carla", "Eng.Comp.", 6, 6.5)
  | matricula == 10 = ("Luiz", "C.Comp.", 7, 5.7)

nota :: Aluno -> Float
nota (_,_,_,n) = n

nome :: Aluno -> Nome
nome (x,_,_,_) = x

reprovados :: [Aluno] -> Int
reprovados [] = 0
reprovados (h:t)
  | (nota h) < 6.0 = 1 + reprovados t
  | otherwise = reprovados t

menor_nota :: [Aluno] -> Aluno
menor_nota [um] = um
menor_nota (h:t)
  | (nota h) < (nota (menor_nota t)) = h
  | otherwise = menor_nota t

contar_reprovados :: Int -> Int
contar_reprovados numero = reprovados [alunos x | x <- [1..numero]]

calcular_menor_nota :: Int -> Nome
calcular_menor_nota numero = nome (menor_nota [alunos x | x <- [1..numero]])