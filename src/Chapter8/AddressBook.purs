module Chapter8.AddressBook where

newtype Address = Address 
  { street :: String
  , city   :: String 
  , state  :: String
  }

address :: String -> String -> String -> Address
address street city state = Address
  { street:  street
  , city:    city
  , state:   state
  }

data PhoneType 
  = HomePhone 
  | WorkPhone 
  | CellPhone
  | OtherPhone

newtype PhoneNumber = PhoneNumber 
  { "type" :: PhoneType
  , number :: String
  }

phoneNumber :: PhoneType -> String -> PhoneNumber
phoneNumber ty number = PhoneNumber
  { "type": ty
  , number: number
  }

newtype Person = Person
  { firstName :: String
  , lastName  :: String
  , address   :: Address
  , phones    :: [PhoneNumber]
  }

person :: String -> String -> Address -> [PhoneNumber] -> Person
person firstName lastName address phones = Person
  { firstName: firstName
  , lastName:  lastName
  , address:   address
  , phones:    phones
  }

examplePerson :: Person
examplePerson = 
  person "John" "Smith" 
         (address "123 Fake St." "FakeTown" "CA") 
         [ phoneNumber HomePhone "555-555-5555"
         , phoneNumber CellPhone "555-555-0000"
         ]

instance showAddress :: Show Address where
  show (Address o) = "Address " ++
    "{ street: " ++ show o.street ++
    ", city: "   ++ show o.city ++
    ", state: "  ++ show o.state ++
    " }"

instance showPhoneType :: Show PhoneType where
  show HomePhone = "HomePhone"
  show WorkPhone = "WorkPhone"
  show CellPhone = "CellPhone"
  show OtherPhone = "OtherPhone"

instance showPhoneNumber :: Show PhoneNumber where
  show (PhoneNumber o) = "PhoneNumber " ++
    "{ type: "   ++ show o."type" ++
    ", number: " ++ show o.number ++
    " }"

instance showPerson :: Show Person where
  show (Person o) = "Person " ++
    "{ firstName: " ++ show o.firstName ++
    ", lastName: "  ++ show o.lastName ++
    ", address: "   ++ show o.address ++
    ", phones: "    ++ show o.phones ++
    " }"