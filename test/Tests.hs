module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Dynamic.FizzBuzz
import Dynamic.Fibonacci

fizzBuzzSuite :: TestTree
fizzBuzzSuite = testGroup "ExampleTest"
                [
                testCase "fizzbuzz" $ fizzBuzz 1 @?= "one!"
                , testCase "fibonacci" $ fibonacci 20 @?= 6765
                ]

main = defaultMain fizzBuzzSuite