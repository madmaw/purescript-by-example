module Chapter5.Exercise8 where

import Debug.Trace
import Data.Array
import Chapter5.Shape

main = trace $ show $ map (scaleShape 2) a
	where a = [
		Line (Point{x: 0, y: 0}) (Point{x: 1, y: 1}), 
		Circle (Point{x: 1, y:2}) 2 , 
		Rectangle (Point{x:2, y:1}) 2 3,
		Text (Point{x:3, y:2}) "Hello"
	]

scaleShape :: Number -> Shape -> Shape
scaleShape n (Line (Point{x=x1, y=y1}) (Point{x=x2, y=y2})) = Line p1 p2
	where 
		p1 = Point{x:(x1 * n), y:(y1 * n)}
		p2 = Point{x:(x2 * n), y:(y2 * n)}
scaleShape n (Circle (Point{x=cx, y=cy}) r) = Circle c (r*n) 
	where 
		c = Point{x:(cx * n), y:(cy * n)}
scaleShape n (Rectangle (Point{x=ox, y=oy}) w h) = Rectangle o (w*n) (h*n) 
	where 
		o = Point{x:(ox * n), y:(oy * n)}
scaleShape n (Text (Point{x=ox, y=oy}) s) = Text o s 
	where 
		o = Point{x:(ox * n), y:(oy * n)}

