module Dynamic.FizzBuzz where

fizzBuzz :: Int -> String
fizzBuzz n
  | n `mod` 5 == 0 && n `mod` 3 == 0 = "FizzBuzz"
  | n `mod` 5 == 0 = "Buzz"
  | n `mod` 3 == 0 = "Fizz"
  | otherwise = show n