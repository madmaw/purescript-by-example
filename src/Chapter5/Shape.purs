module Chapter5.Shape where



data Shape 
	= Circle Point Number 
	| Rectangle Point Number Number
	| Line Point Point
	| Text Point String 

data Point = Point 
	{
		x :: Number, 
		y :: Number
	} 

showShape :: Shape -> String
showShape (Line p1 p2) = (showPoint p1) ++ "->" ++ (showPoint p2)
showShape (Circle c r) = (showPoint c) ++ " " ++ (show r)
showShape (Rectangle p w h) = (showPoint p) ++ " " ++ (show w) ++ " " ++ (show h)
showShape (Text p s) = (showPoint p) ++ " " ++ s

showPoint :: Point -> String
showPoint (Point{x=x, y=y}) = "(" ++ (show x) ++ "," ++ (show y) ++ ")"

instance showShapeInstance :: Show Shape where 
	show = showShape
