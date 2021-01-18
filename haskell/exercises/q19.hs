acm :: Int -> Int -> Int
acm m n
  | m == 0 = n + 1
  | ((m /= 0) && (n == 0)) = (acm (m-1) 1)
  | ((m /= 0) && (n /= 0)) = (acm (m-1) (acm m (n-1)))