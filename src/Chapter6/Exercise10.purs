module Chapter6.Exercise10 where

import Debug.Trace
import Data.Monoid

class (Monoid m) <= Action m a where
   act :: m -> a -> a

instance prefixElementAction :: Action String [String] where
	act _  [] = []
	act m (x:xs) = [m ++ x] ++ (act m xs)

main = trace $ show $ act "pre" ["1", "2", "3", "4"]