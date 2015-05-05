module Chapter8.Exercise5 where

import Debug.Trace
import Control.Monad
import Data.Maybe
import Data.Array

filterM' :: forall m a. (Monad m) => (a -> m Boolean) -> [a] -> m [a]
filterM' _ [] = return []
filterM' f (x:xs) = do 
	b <- f x
	xs' <- filterM' f xs
	return $ 
		if b 
		then x:xs'
		else xs'

main = do
	trace $ show $ filterM' (\a -> Just (a > 2)) [1,2,3,4]
	trace $ show $ filterM' (\a -> [a == 2]) [1,2,3,4]