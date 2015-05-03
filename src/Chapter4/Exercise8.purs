module Chapter4.Exercise8 where 

import Debug.Trace 
import Data.Array
import Control.MonadPlus

main = let a = [1, 2, 3, 4, 5, 12, 34]
	in 
		trace $ show $ map pythagoreanTriples a

pythagoreanTriples :: Number -> [[Number]]
pythagoreanTriples n = do 
	c <- (1 .. n)
	a <- (1 .. c)
	b <- (a .. c)
	guard $ a * a + b * b == c * c
	return [a, b, c]
