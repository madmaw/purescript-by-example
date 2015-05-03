module Chapter6.HashCode where

import Data.String(length, charCodeAt)
import Data.Maybe

type HashCode = Number

class (Eq a) <= Hashable a where
	hash :: a -> HashCode

(<##>) :: HashCode -> HashCode -> HashCode
(<##>) h1 h2 = (73 * h1 + 51 * h2) % 65536

hashEqual :: forall a. (Hashable a) => a -> a -> Boolean
--hashEqual = (==) `on` hash
hashEqual a b = (hash a) == (hash b)

instance hashString :: Hashable String where
	hash s = go 0 0 
		where 
		go :: Number -> HashCode -> HashCode
		go i acc | i >= length s = acc
		go i acc = go (i+1) acc <##> doHash $ charCodeAt i s 
			where
			doHash :: Maybe Number -> Number
			doHash Nothing = 0
			doHash (Just n) = n

instance hashNumber :: Hashable Number where
	hash n = n

instance hashBoolean :: Hashable Boolean where
	hash true = 1
	hash false = 0

instance hashArray :: (Hashable a) => Hashable [a] where
	hash [] = 0
	hash (x:xs) = hash x <##> hash xs
