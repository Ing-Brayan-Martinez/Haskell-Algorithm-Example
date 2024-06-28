module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Dynamic.Factorial
import Dynamic.Fibonacci
import Dynamic.FizzBuzz

import Ordering.BubbleSort
import Ordering.QuickSort
import Ordering.SelectionSort


fizzBuzzSuite :: TestTree
fizzBuzzSuite = testGroup "ExampleTest"
                [ testGroup "Dynamic" $
                  [ testCase "factorial" $ factorial 5 @?= 120
                  , testCase "fibonacci" $ fibonacci 20 @?= 6765
                  , testCase "fizzbuzz" $ fizzBuzz 20 @?= "Buzz"
                  ]
                , testGroup "Ordering" $
                  [ testCase "bubbleSort" $ bubbleSort 1 @?= 1
                  , testCase "quickSort" $ quickSort 1 @?= 1
                  , testCase "selectionSort" $ selectionSort 1 @?= 1
                  ]
                ]

main = defaultMain fizzBuzzSuite