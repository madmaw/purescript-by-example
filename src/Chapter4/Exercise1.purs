module Chapter4.Exercise1 where

import Debug.Trace
import Data.Array

main = let 	
		a = [[1], [1,2], [], [4,4,4,4,4], [3,1,-2,0], [0]]
	in 
		trace $ show $ map even a


even :: [Number] -> Boolean
even a = false == (null $ filter (\x -> x % 2 == 0) a)