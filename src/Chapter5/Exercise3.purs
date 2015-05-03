module Chapter5.Exercise3 where

import Debug.Trace 
import Data.Array

main = let a = [[true, true, true, false], [false, false, true, true], [true, true, true], []]
	in trace $ show $ map allTrue a

allTrue :: [Boolean] -> Boolean
allTrue [] = true
allTrue (x: xs) = x && allTrue xs