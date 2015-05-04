module Chapter7.Exercise8 where

import Debug.Trace

import Data.Maybe
import Data.Array

traverseArray :: forall a b m. (Applicative m) => (a -> m b) -> [a] -> m [b]
traverseArray _ [] = pure []
traverseArray f (x:xs) = (:) <$> f x <*> traverseArray f xs

sequenceArrayUsingTraverse :: forall a m. (Applicative m) => [m a] -> m [a]
sequenceArrayUsingTraverse = traverseArray (\x -> x)

sequenceArray :: forall a m. (Applicative m) => [m a] -> m [a]
sequenceArray [] = pure []
sequenceArray (x:xs) = (:) <$> x <*> sequenceArray xs

traverseArrayUsingSequence :: forall a b m. (Applicative m) => (a -> m b) -> [a] -> m [b]
traverseArrayUsingSequence f a = sequenceArray $ map f a 


main = do 
	trace $ show $ sequenceArrayUsingTraverse [Just 1, Just 2, Just 3]
	trace $ show $ sequenceArray [Just 1, Just 2, Just 3]	
	trace $ show $ traverseArrayUsingSequence (\x -> Just x) [1, 2, 3]