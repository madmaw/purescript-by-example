module Chapter5.Exercise1 where 

import Debug.Trace
import Data.Array

main = 
	let a = [0, 1, 2, 3]
	in trace $ show $ map fib a

fib :: Number -> Number
fib 0 = 0
fib n = n + fib (n - 1)