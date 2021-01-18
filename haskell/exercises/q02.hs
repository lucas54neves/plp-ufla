media :: Float -> Float -> Float -> Float
media a b c = (a + b + c) / 3

quantos_maiores :: Float -> Float -> Float -> Integer
quantos_maiores a b c
  | a <= (media a b c) && b <= (media a b c) && c <= (media a b c) = 0
  | a <= (media a b c) && b <= (media a b c) = 1
  | a <= (media a b c) && c <= (media a b c) = 1
  | b <= (media a b c) && c <= (media a b c) = 1
  | a <= (media a b c) = 2
  | b <= (media a b c) = 2
  | c <= (media a b c) = 2