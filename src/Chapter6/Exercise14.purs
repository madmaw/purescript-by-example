module Chapter6.Exercise14 where

import Debug.Trace
import Chapter6.HashCode 

hashEquals :: forall a. (Hashable a) => a -> a -> Boolean
hashEquals a1 a2 = 
	let 
		h1 = hash a1
		h2 = hash a2
	in
		if h1 == h2
		then a1 == a2
		else false

main = do
	trace $ show $ hashEquals "x" "y"
	trace $ show $ hashEquals "x" "x"
	trace $ show $ hashEquals true true
	trace $ show $ hashEquals [1] [1]
	trace $ show $ hashEquals [1,2] [1,2,3]