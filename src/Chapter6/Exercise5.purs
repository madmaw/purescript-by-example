module Chapter6.Exercise5 where 

import Debug.Trace
import Data.Foldable
import Data.Traversable
import Chapter6.NonEmpty

main = do
	trace $ show $ foldr (-) 0 a
	trace $ show $ foldl (-) 0 a
	trace $ show $ foldMap (show) a
	where
		a = NonEmpty 1 [2,3]