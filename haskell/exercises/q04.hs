module Questao_04 (mdc, mmc) where

import Questao_06

mmc :: Int -> Int -> Int
mmc numero1 numero2
  | numero1 == numero2 = numero1
  | numero1 == 0 || numero2 == 0 = 0
  | otherwise = numero1 * (div numero2 (mdc numero1 numero2))