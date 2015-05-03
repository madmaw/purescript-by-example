module Chapter6.Exercise4 where

import Debug.Trace
import Chapter6.NonEmpty

main = trace $ show $ (<$>) (\n -> show n) (NonEmpty 0 a)
	where a = [1, 2, 3, 4, 5, 6]
