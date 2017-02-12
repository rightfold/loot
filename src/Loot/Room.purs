module Loot.Room
  ( Room(..)
  , display
  ) where

import Prelude

data Room
  = Blank Int Int

display :: Room -> String
display (Blank w h) = top <> mid <> bot
  where top = bot <> "\n"
        bot = "+" <> repeat "-" w <> "+"
        mid = repeat ("|" <> repeat "." w <> "|\n") h

repeat :: String -> Int -> String
repeat s = go ""
  where go acc n | n <= 0 = acc
        go acc n = go (acc <> s) (n - 1)
