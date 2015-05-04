module Chapter7.AddressBook.Validation where


import Data.Maybe
import Data.Array
import Data.Either
import Data.Validation
import Data.Traversable

import Chapter7.AddressBook

import qualified Data.String as S
import qualified Data.String.Regex as R

import Control.Apply
import Data.Either

type Errors = [String]

nonEmpty :: String -> String -> V Errors Unit
nonEmpty field "" = invalid ["Field '" ++ field ++ "' cannot be empty"]
nonEmpty _     _  = pure unit

nonWhitespaceRegex :: R.Regex
nonWhitespaceRegex = 
  R.regex
    "^\\w" 
    { unicode:    false
    , sticky:     false
    , multiline:  false
    , ignoreCase: false
    , global:     false 
    }

nonWhitespace :: String -> String -> V Errors Unit
nonWhitespace field s = go $ runV Left Right $ matches field nonWhitespaceRegex s
	where 
		go :: Either Errors Unit -> V Errors Unit
		go (Left e) = invalid ["Field '"++field++"' cannot be empty or all whitespace"]
		go (Right v) = pure v


arrayNonEmpty :: forall a. String -> [a] -> V Errors Unit
arrayNonEmpty field [] = invalid ["Field '" ++ field ++ "' must contain at least one value"]
arrayNonEmpty _     _  = pure unit

maybeNotNothing :: forall a. String -> Maybe a -> V Errors Unit
maybeNotNothing field Nothing = invalid ["Field '"++field++"' must not be Nothing"]
maybeNotNothing _ _ = pure unit

lengthIs :: String -> Number -> String -> V Errors Unit
lengthIs field len value | S.length value /= len = invalid ["Field '" ++ field ++ "' must have length " ++ show len]
lengthIs _     _   _     = pure unit

phoneNumberRegex :: R.Regex
phoneNumberRegex = 
  R.regex 
    "^\\d{3}-\\d{3}-\\d{4}$" 
    { unicode:    false
    , sticky:     false
    , multiline:  false
    , ignoreCase: false
    , global:     false 
    }

stateRegex :: R.Regex
stateRegex = 
  R.regex 
    "(NW)|(QD)|(VC)|(SA)|(NT)|(WA)|(AT)" 
    { unicode:    false
    , sticky:     false
    , multiline:  false
    , ignoreCase: false
    , global:     false 
    }

matches :: String -> R.Regex -> String -> V Errors Unit
matches _     regex value | R.test regex value = pure unit
matches field _     _     = invalid ["Field '" ++ field ++ "' did not match the required format"]

validateAddress :: Address -> V Errors Address 
validateAddress (Address o) = 
  address <$> (nonWhitespace "Street" o.street *> pure o.street)
          <*> (nonWhitespace "City"   o.city   *> pure o.city)
          <*> (lengthIs "State" 2 o.state *> (matches "State" stateRegex o.state) *> pure o.state)

validatePhoneNumber :: PhoneNumber -> V Errors PhoneNumber
validatePhoneNumber (PhoneNumber o) = 
  phoneNumber <$> pure o."type"
              <*> (matches "Number" phoneNumberRegex o.number *> pure o.number)

validatePerson :: Person -> V Errors Person
validatePerson (Person o) =
  person <$> (nonEmpty "First Name" o.firstName *> pure o.firstName)
         <*> (nonEmpty "Last Name"  o.lastName  *> pure o.lastName)
         <*> traverse validateAddress o.address
         <*> (arrayNonEmpty "Phone Numbers" o.phones *> traverse validatePhoneNumber o.phones)

validatePerson' :: Person -> Either Errors Person
validatePerson' p = runV Left Right $ validatePerson p

