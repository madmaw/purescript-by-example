module Chapter4.Exercise6 where 

import Chapter4.Factor 
import Data.Array
import Debug.Trace

main = 
	let a = [1, 2, 3, 4, 5, 12]
	in
		trace $ show $ map isPrime a

