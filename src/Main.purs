module Main
  ( main
  ) where

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Loot.Room (Room(..), display)
import Prelude

main :: ∀ eff. Eff (console :: CONSOLE | eff) Unit
main = do
  log $ display $ Blank 15 5
