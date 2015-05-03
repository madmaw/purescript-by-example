module Chapter6.Exercise15 where

import Debug.Trace
import Chapter6.HashCode

newtype Uniform = Uniform Number
    
instance eqUniform :: Eq Uniform where
	(==) (Uniform u1) (Uniform u2) = u1 % 1.0 == u2 % 1.0 
	(/=) (Uniform u1) (Uniform u2) = u1 % 1.0 /= u2 % 1.0 

instance hashUniform :: Hashable Uniform where 
	hash (Uniform n) = (n % 1.0) * 100000


main = do 
	trace $ show $ hash (Uniform 1.4)
	trace $ show $ hash (Uniform 1.1)