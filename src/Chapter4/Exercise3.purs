module Chapter4.Exercise3 where 

import Debug.Trace
import Data.Array

main = 
	let 
		a = [[], [0], [1], [2], [0,1,2,3], [9, 12, 15]]
	in
		trace $ show $ map squares a


squares :: [Number] -> [Number]
squares = map (\x -> x * x)