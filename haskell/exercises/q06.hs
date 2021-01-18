module Questao_06 (mdc) where

mdc :: Int -> Int -> Int
mdc numero1 numero2
  | numero1 > numero2 = mdc (numero1 - numero2) numero2
  | numero1 < numero2 = mdc numero2 (numero2 - numero1)
  | otherwise = numero1