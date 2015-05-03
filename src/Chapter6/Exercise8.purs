module Chapter6.Exercise8 where

import Debug.Trace
import Data.Foldable

data OneMore f a = OneMore a (f a)

instance foldableOneMore :: (Foldable f) => Foldable (OneMore f) where
	foldr fun i (OneMore a fa) = fun a (foldr fun i fa)
	foldl fun i (OneMore a fa) = foldl fun (fun i a) fa
	foldMap fun (OneMore a fa) = (fun a) <> (foldMap fun fa)

instance showOneMore :: (Show a, Foldable f) => Show (OneMore f a) where
	show (OneMore a fa) = (show a) ++ ":" ++ (foldMap show fa)

main = do 
	trace $ show $ foldr (-) 0 (OneMore 1 [2, 3])
	trace $ show $ foldl (-) 0 (OneMore 1 [2, 3])
	trace $ show $ foldMap show (OneMore 1 [2, 3])
