module Chapter7.Exercise3 where

import Debug.Trace
import Data.Maybe
import Data.Either

combineMaybe :: forall a f. (Applicative f) => Maybe (f a) -> f (Maybe a)
combineMaybe Nothing = pure Nothing
combineMaybe (Just a) = Just <$> a

main = do 	
	trace $ show $ combineMaybe (Just (Just 1))
	trace $ show $ combineMaybe (Just (Nothing::Maybe Number))
	trace $ show $ combineMaybe (Just (Right 1::Either Number Number))
	-- the result of this doesn't seem right? left has special handling??
	trace $ show $ combineMaybe (Just (Left 1::Either Number Number))
