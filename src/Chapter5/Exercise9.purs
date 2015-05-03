module Chapter5.Exercise9 where

import Debug.Trace
import Data.Array 
import Data.Maybe
import Chapter5.Shape

main = trace $ show $ map showMaybe $ map extractText a
	where a = [
		Line (Point{x: 0, y: 0}) (Point{x: 1, y: 1}), 
		Circle (Point{x: 1, y:2}) 2 , 
		Rectangle (Point{x:2, y:1}) 2 3,
		Text (Point{x:3, y:2}) "Hello"
	]

showMaybe::Maybe String -> String
showMaybe Nothing = "_nothing"
showMaybe (Just s) = s

extractText::Shape -> Maybe String
extractText (Text _ s) = Just s
extractText _ = Nothing