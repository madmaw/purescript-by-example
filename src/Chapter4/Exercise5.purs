module Chapter4.Exercise5 where

import Debug.Trace
import Data.Array

main = 
	let 
		a = [[], [0], [1], [-1], [-1, 1, 0, -3, 4, -100], [-1, -1, -1, -1]]
	in
		trace $ show $ map removeNegatives a

(<$?>) :: forall a. (a -> Boolean) -> [a] -> [a]
(<$?>) = filter
infix 6 <$?>

removeNegatives :: [Number] -> [Number]
removeNegatives = (<$?>) (\x -> x >= 0)