module Chapter7.Exercise4 where 

-- also Exercise5

import Debug.Trace
import Chapter7.AddressBook 
import Chapter7.AddressBook.Validation

main = do 
	trace $ show $ validateAddress $ Address { 
		street: "123 Fake St.", 
		city: "FakeTown", 
		state: "CA" 
	}
	trace $ show $ validateAddress $ Address { 
		street: "", 
		city: "", 
		state: "" 
	}
	trace $ show $ validateAddress $ Address { 
		street: " ", 
		city: " ", 
		state: "QD" 
	}
	trace $ show $ validateAddress $ Address { 
		street: "123 Fake St.", 
		city: "FakeTown", 
		state: "NW" 
	}	