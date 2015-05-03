module Chapter4.Exercise2 where 

import Debug.Trace
import Data.Array (null, map)
import Data.Array.Unsafe (head, tail)

main = 
	let
		a = [[1], [2,4,6], [], [1,3,5,100], [0,0,0,0,0]]
	in
		trace $ show $ map countEven a

countEven :: [Number] -> Number
countEven a = 
	if null a 
	then 0
	else 
		let h = head a
		in (h + 1) % 2 + (countEven $ tail a)
