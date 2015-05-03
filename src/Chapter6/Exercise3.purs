module Chapter6.Exercise3 where 

import Debug.Trace 
import Chapter6.NonEmpty

main = trace $ show $ (NonEmpty 1 [2,3,4]) <> (NonEmpty 5 [6,7,8])