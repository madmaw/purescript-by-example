module Chapter6.NonEmpty where 

import Data.Monoid
import Data.Foldable
import Data.Traversable
import Data.Function
import Data.Array

data NonEmpty a = NonEmpty a [a]

mapNonEmpty :: forall a b. (a -> b) -> NonEmpty a -> NonEmpty b
mapNonEmpty f (NonEmpty h t) = NonEmpty (f h) (map f t)

instance showNonEmpty :: (Show a) => Show (NonEmpty a) where
	show (NonEmpty h t) = (show h) ++ ":" ++ (show t)

instance eqNonEmpty :: (Eq a) => Eq (NonEmpty a) where 
	(==) (NonEmpty h1 t1) (NonEmpty h2 t2) = h1 == h2 && t1 == t2
	(/=) (NonEmpty h1 t1) (NonEmpty h2 t2) = h1 /= h2 && t1 /= t2

instance semigroupNonEmpty :: Semigroup (NonEmpty a) where
	(<>) (NonEmpty h1 t1) (NonEmpty h2 t2) = NonEmpty h1 (t1 <> [h2] <> t2)

instance functorNonEmpty :: Functor NonEmpty where 
	(<$>) = mapNonEmpty

instance foldableNonEmpty :: Foldable NonEmpty where
	foldr f a (NonEmpty h t) = foldr f a (h:t)
	foldl f a (NonEmpty h t) = foldl f a (h:t)
	foldMap f (NonEmpty h t) = foldMap f (h:t)
