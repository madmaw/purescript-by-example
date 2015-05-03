module Chapter4.Exercise14 where 

import Debug.Trace
import Data.Array
import Data.Foldable

main = let a = [[1, 2, 3], [1], [4, 3, 2, 1, 0]]
	in 
		trace $ show $ map reverse' a


reverse' :: forall a. [a] -> [a]
reverse' = foldl (\acc x-> [x] ++ acc) [] 