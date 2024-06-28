module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Dynamic.Factorial
import Dynamic.Fibonacci
import Dynamic.FizzBuzz


fizzBuzzSuite :: TestTree
fizzBuzzSuite = testGroup "ExampleTest"
                [ testGroup "Dynamic" $
                  [ testCase "factorial" $ factorial 5 @?= 120
                  , testCase "fibonacci" $ fibonacci 20 @?= 6765
                  , testCase "fizzbuzz" $ fizzBuzz 20 @?= "Buzz"
                  ]
                , testGroup "Ordering" $
                  [ testCase "fizzbuzz" $ fizzBuzz 20 @?= "Buzz"
                  , testCase "fibonacci" $ fibonacci 20 @?= 6765
                  ]
                ]

main = defaultMain fizzBuzzSuite