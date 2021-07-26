module Lib where

myfunc :: ()
myfunc = ()

myFactorial :: Int -> Int
myFactorial 0 = 1
myFactorial n = n * myFactorial (n - 1)
