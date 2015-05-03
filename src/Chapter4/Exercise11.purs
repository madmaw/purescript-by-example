module Chapter4.Exercise11 where 

import Debug.Trace
import Data.Array
import Data.Foldable

main = let a = [[false, true, true], [true, true], [], [true]]
	in
		trace $ show $ map allTrue a

allTrue :: [Boolean] -> Boolean
allTrue = foldl (&&) true 