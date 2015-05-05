module Chapter8.Exercise2 where

import Debug.Trace
import Data.Array
import Control.Monad

-- foldM :: forall m a b. (Monad m) => (a -> b -> m a) -> a -> [b] -> m a 
sums::[Number] -> [Number]
sums a = sort $ foldM f 0 a 
	where f a b = [a, a + b]


main = do 
	trace $ show $ sums []
	trace $ show $ sums [1,2,10]
	trace $ show $ sums [1,2,5,10]
	trace $ show $ sums [5,10, 20, 50]	