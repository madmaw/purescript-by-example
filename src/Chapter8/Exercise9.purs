module Chapter8.Exercise9 where

import Control.Monad.Eff
import Control.Monad.Eff.DOM (DOM())

import Debug.Trace

import Chapter8.AddressBook.UI

main :: forall eff. Eff (trace :: Trace, dom :: DOM | eff) Unit
main = do
  trace "Attaching event handlers"
  setupEventHandlers 