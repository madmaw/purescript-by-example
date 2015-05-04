module Chapter7.Exercise6 where

import Debug.Trace

import Data.Maybe
import Data.Either
import Data.Monoid
import Data.Foldable
import Data.Traversable

data Tree a = Leaf | Branch (Tree a) a (Tree a)

instance foldableTree :: Foldable Tree where 
	--foldr :: forall a b. (a -> b -> b) -> b -> f a -> b
	foldr _ acc Leaf = acc
	foldr f acc (Branch left v right) = acc'''
		where
			acc' = foldr f acc left
			acc'' = f v acc'
			acc''' = foldr f acc'' right
	--foldl :: forall a b. (b -> a -> b) -> b -> f a -> b
	foldl _ acc Leaf = acc
	foldl f acc (Branch left v right) = acc'''
		where 
			acc' = foldl f acc right
			acc'' = f acc' v
			acc''' = foldl f acc'' left
	--foldMap :: forall a m. (Monoid m) => (a -> m) -> f a -> m
	foldMap _ Leaf = mempty
	foldMap f (Branch left v right) = (foldMap f left) <> (f v) <> (foldMap f right)


instance functorTree :: Functor Tree where 
	--(<$>) :: forall a b. (a -> b) -> f a -> f b
	(<$>) _ Leaf = Leaf
	(<$>) f (Branch left value right) = Branch (f <$> left) (f value) (f <$> right)

instance traversableTree :: Traversable Tree where 
  	--traverse :: forall a b m. (Applicative m) => (a -> m b) -> t a -> m (t b)
	traverse _ Leaf = pure Leaf
	traverse f (Branch left value right) = Branch <$> traverse f left <*> f value <*> traverse f right
  	--sequence :: forall a m. (Applicative m) => t (m a) -> m (t a)
	sequence Leaf = pure Leaf
	sequence (Branch left value right) = Branch <$> sequence left <*> value <*> sequence right 

instance showTree :: (Show a) => Show (Tree a) where
	show Leaf = "Leaf"
	show (Branch left value right) = 
		"(Branch "++(show left)++
		" "++(show value)++
		" "++(show right)++
		")"

main = do 
	trace $ show $ traverse (\x -> Just x) (Branch Leaf 1 Leaf)
	trace $ show $ sequence (Branch Leaf (Just 1) Leaf)
	trace $ show $ traverse (\x -> (Right x)::Either Number Number) (Branch (Branch Leaf 1 Leaf) 2 (Branch Leaf 3 Leaf))
	trace $ show $ traverse (\x -> (Left x)::Either Number Number) (Branch (Branch Leaf 1 Leaf) 2 (Branch Leaf 3 Leaf))


