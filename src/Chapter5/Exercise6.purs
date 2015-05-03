module Chapter5.Exercise6 where 

import Debug.Trace
import Data.Array

main = trace $ show $ map flatten' a
	where a = [[["a", "b", "c"], ["d", "e", "f"]],[[],[],[]],[["long"],["cat"],["is"],["long"]],[]]

flatten' :: forall a. [[a]] -> [a]
flatten' [] = []
flatten' [[]] = []
flatten' ([]:outertail) = flatten' outertail
flatten' ((h:innertail):outertail) = [h] ++ (flatten' $ (++) [innertail] outertail)