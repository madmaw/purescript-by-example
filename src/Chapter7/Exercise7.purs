module Chapter7.Exercise7 where

import Debug.Trace
import Data.Maybe

import Chapter7.AddressBook
import Chapter7.AddressBook.Validation

main = do 
    	-- works, but won't compile if more than one is uncommented?!
    	{--
	 	trace $ show $ validatePerson $ examplePerson
	    trace $ show $ validatePerson $ Person 
	    	{ firstName: "Bad"
	    	, lastName: "Data"
	    	, address: Just (address "123 Fake St." "FakeTown" "BUF")
	    	, phones: []
	    	}
	    --}
		trace $ show $ validatePerson $ Person 
			{ firstName: "John"
			, lastName: "Smith"
			, address: Nothing
			, phones: [phoneNumber HomePhone "555-555-5555"]
			}
