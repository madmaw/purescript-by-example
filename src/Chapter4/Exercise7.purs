module Chapter4.Exercise7 where 

import Debug.Trace
import Data.Array

main = 
	let 
		a = [1,2,3]
		b = [-1,-2,-3]
	in trace $ show $ cartesianProduct a b

cartesianProduct :: forall a. [a] -> [a] -> [[a]]
cartesianProduct a b = do
	e <- a
	f <- b
	return [e, f]
