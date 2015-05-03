module Chapter6.Exercise11 where

import Debug.Trace
import Data.Monoid

class (Monoid m) <= Action m a where
   act :: m -> a -> a

newtype Self m = Self m

instance concatenateSelfAction :: (Monoid m) => Action m (Self m) where
	act m (Self n) = Self (m <> n)

instance showSelf :: (Show m) => Show (Self m) where 
	show (Self m) = "Self " ++ (show m)

main = do 
	trace $ show $ act "x" (Self "y")
