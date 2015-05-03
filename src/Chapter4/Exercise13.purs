module Chapter4.Exercise13 where

import Debug.Trace
import Data.Foldable

main = trace $ show $ count (\a -> a >= 0) [1, 2, 3, -4, 0]

count :: forall a. (a -> Boolean) -> [a] -> Number
count p = foldl (count' p) 0

count' :: forall a. (a -> Boolean) -> Number -> a -> Number
count' p n v = 
	if p v
	then n + 1
	else n