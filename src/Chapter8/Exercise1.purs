module Chapter8.Exercise1 where 

import Data.Array
import Data.Maybe
import Debug.Trace

third :: forall a. [a] -> Maybe a
third a = do
	a' <- tail a
	a'' <- tail a'
	h <- head a''
	return h

main = do 
	trace $ show $ third [1,2,3]
	trace $ show $ third $ []::Array Boolean
	trace $ show $ third ["a", "b", "c", "d"]
	trace $ show $ third [Nothing, Just 1]