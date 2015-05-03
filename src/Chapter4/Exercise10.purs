module Chapter4.Exercise10 where

import Chapter4.Factor
import Debug.Trace
import Data.Array

main = let a = [12]
	in trace $ show $ map uniqueFactorizations a

uniqueFactorizations :: Number -> [[Number]]
uniqueFactorizations n = map Data.Array.Unsafe.head $ group $ sort $ factorizations n

factorizations :: Number -> [[Number]]
factorizations n = 
	let 
		f = factors n
	in do
		--concatMap (\a -> concatMap (decompose n) a ) f
		--map (\a -> map (\x -> x + 1) a) f
		a <- f
		e <- a
		d <- decompose n e
		return $ sort $ append d $ delete e a 


decompose :: Number -> Number -> [[Number]]
decompose n 1 = []
decompose n e = 
	if e == n
	then [[e]]
	else factorizations e


