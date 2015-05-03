module Chapter4.Exercise9 where

import Debug.Trace 
import Data.Foldable
import Data.Array

main = let a = [0, 1, 2, 4, 8, 13, 20]
	in trace $ show $ map isPrime a

isPrime :: Number -> Boolean
isPrime n = false == (any (\[a, b] -> a * b == n) $ pairs n)

pairs :: Number -> [[Number]]
pairs 0 = []
pairs 1 = []
pairs n = do
	a <- 2 .. n
	b <- a .. n
	return [a, b] 