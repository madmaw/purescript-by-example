module Chapter6.Exercise2 where

import Debug.Trace

newtype Complex = Complex 
	{ real::Number
	, imaginary::Number
	}

main = trace $ show (Complex{real:0, imaginary:1})

instance showComplex :: Show Complex where 
	show (Complex{real=real, imaginary=imaginary}) = 
		"Complex{real="++(show real)++",imaginary="++(show imaginary)++")"

instance eqComplex :: Eq Complex where 
	(==) (Complex{real=real1, imaginary=imaginary1}) (Complex{real=real2, imaginary=imaginary2}) =
		real1 == real2 && imaginary1 == imaginary2
	(/=) a b = false == (a == b)