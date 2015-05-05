module Chapter8.Exercise7 where 

import Debug.Trace
import Control.Monad.Eff
import Control.Monad.Eff.Exception

safeDivide :: forall eff. Number -> Number -> Eff (err :: Exception | eff) Number
safeDivide n d | n % d == 0 = return (n / d)
safeDivide _ _              = throwException $ error "doesn't divide evenly"

--printException :: forall r. Exception -> Eff (trace :: Trace | r) Unit
printException :: Error -> Eff (trace :: Trace) Unit
--printException e = trace $ show e
printException e = trace $ show e

main :: Eff (trace :: Trace) Unit 
main = catchException printException $ do 
	v <- safeDivide 12 5
	trace $ show v

