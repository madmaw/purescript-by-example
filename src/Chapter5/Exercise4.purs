module Chapter5.Exercise4 where

import Debug.Trace
import Data.Array

main = let a = [[1], [1, 2, 3], [3, 2, 1], [5, 2, 5, 1], [2, 2, 2]]
	in trace $ show $ map isSorted a

isSorted :: [Number] -> Boolean
isSorted [] = true
isSorted [_] = true
isSorted (a:b:xs) = a <= b && isSorted (b:xs)