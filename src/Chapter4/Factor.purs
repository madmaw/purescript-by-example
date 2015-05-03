module Chapter4.Factor where 

import Data.Foldable
import Data.Array

factors :: Number -> [[Number]]
factors n = filter (\[a, b] -> a * b == n) $ pairs n

pairs :: Number -> [[Number]]
pairs n = concatMap (\i -> map (\j -> [i,j]) (i .. n)) (1 .. n)

isPrime :: Number -> Boolean
isPrime n = 1 == (length $ factors n)