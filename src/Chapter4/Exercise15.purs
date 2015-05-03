module Chapter4.Exercise15 where

import Debug.Trace

main = trace "not implemented"
{--

import Data.Array
import Data.Path
import FileOperations

main = let a = []
	in trace $ show $ map onlyFiles a

onlyFiles :: Path -> Path 
onlyFiles = filter (\f -> false == (isDirectory f)) $ allFiles

allFiles :: Path -> [Path]
allFiles file = file : do
	child <- ls file
	allFiles child
--}
