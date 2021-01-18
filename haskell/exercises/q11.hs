retira_espacos :: String -> String
retira_espacos [] = []
retira_espacos (i:j)
  | i == ' ' =  ' ' : testa_char j
  | otherwise = i : retira_espacos j

testa_char :: String -> String
testa_char (i:j)
  | i == ' ' = testa_char j
  | otherwise = i : retira_espacos j
