module HelloWorld where

import Debug.Trace
import Data.Maybe
import Data.List

main = trace $ show $ showShit $ tail (Cons "y" $ Cons "z" $ Nil)

showShit :: Maybe (List String) -> String
showShit Nothing = "_"
showShit (Just Nil) = "!"
showShit (Just (Cons x l)) = x ++ (showShit $ Just l)