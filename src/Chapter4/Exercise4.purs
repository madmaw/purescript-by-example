module Chapter4.Exercise4 where

import Debug.Trace
import Data.Array

main = 
	let 
		a = [[], [0], [1], [-1], [-1, 1, 0, -3, 4, -100], [-1, -1, -1, -1]]
	in
		trace $ show $ map removeNegatives a

removeNegatives :: [Number] -> [Number]
removeNegatives = filter (\x -> x >= 0)