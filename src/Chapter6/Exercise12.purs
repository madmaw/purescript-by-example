module Chapter6.Exercise12 where 

import Debug.Trace 
import Data.Array
import Prelude.Unsafe

class Unsafe

lastElement :: forall a. (Unsafe) => [a] -> a
lastElement arr = unsafeIndex arr ((length arr) - 1)

-- declare instance
instance unsafe :: Unsafe

main = do 
	trace $ show $ lastElement [1,2,3]
	trace $ show $ lastElement ["ehllo"]