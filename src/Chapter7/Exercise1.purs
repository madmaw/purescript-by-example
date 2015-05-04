module Chapter7.Exercise1 where

import Debug.Trace
import Data.Maybe
import Control.Apply

maybePlus :: Maybe Number -> Maybe Number -> Maybe Number
maybePlus = lift2 (+)

maybeMinus :: Maybe Number -> Maybe Number -> Maybe Number
maybeMinus = lift2 (-)

maybeMultiply :: Maybe Number -> Maybe Number -> Maybe Number
maybeMultiply = lift2 (*)

maybeDivide :: Maybe Number -> Maybe Number -> Maybe Number
maybeDivide = lift2 (/)


main = do 
	trace $ show $ maybePlus (Just 1) (Just 2)
	trace $ show $ maybePlus Nothing (Just 3)
	trace $ show $ maybeMinus (Just 2) (Just 1)
	trace $ show $ maybeMinus Nothing Nothing
	trace $ show $ maybeMultiply (Just 2) (Just 3)
	trace $ show $ maybeMultiply Nothing (Just 1)
	trace $ show $ maybeDivide (Just 8) (Just 2)
	trace $ show $ maybeDivide (Just 3) Nothing
