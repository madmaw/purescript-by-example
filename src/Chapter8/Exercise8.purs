module Chapter8.Exercise8 where

import Debug.Trace
import Control.Monad.Eff
import Control.Monad.Eff.Random
import Control.Monad.ST


pi :: forall eff. Number -> Number -> Eff (st :: ST Number, random :: Random, trace :: Trace | eff) Number
pi sample r = do
	hits <- newSTRef 0 
	let rsq = r * r
	forE 0 sample $ \count -> do
		x <- random
		y <- random
		let x' = x * r
		let y' = y * r
		--trace $ "("++ show x' ++ "," ++ show y' ++ ")"
		modifySTRef hits (\o -> 
			if x'*x' + y'*y' < rsq
			then o + 1
			else o)
		return unit
	
	final <- readSTRef hits
	return $ (final * 4) / sample

main = do
	v <- pi 5000 1
	trace $ show $ v
