module Chapter6.Exercise7 where 

import Debug.Trace

data Extended a = Finite a | Infinite

compareExtended :: forall a. (Ord a) => Extended a -> Extended a -> Ordering
compareExtended Infinite Infinite = EQ
compareExtended Infinite _ = GT
compareExtended _ Infinite = LT
compareExtended (Finite a) (Finite b) = compare a b

instance ordExtended :: (Ord a) => Ord (Extended a) where
	compare = compareExtended

instance eqExtended :: (Eq a) => Eq (Extended a) where 
	(==) Infinite Infinite = true
	(==) Infinite _ = false
	(==) _ Infinite = false
	(==) (Finite a) (Finite b) = a == b
	(/=) Infinite Infinite = false
	(/=) Infinite _ = true
	(/=) _ Infinite = true
	(/=) (Finite a) (Finite b) = a /= b 


main = do 
	trace $ show $ compare Infinite (Finite 1)
	trace $ show $ compare (Finite 2) (Finite 0)
	trace $ show $ compare (Finite 1) Infinite
	trace $ show $ compare Infinite (Infinite::Extended Number)
	trace $ show $ compare (Finite "a") (Finite "b")