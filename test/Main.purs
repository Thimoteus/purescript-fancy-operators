module Test.Main where

import Prelude
import Fancy
import Control.Monad.Eff
import Control.Monad.Eff.Console

main :: ∀ e. Eff (console :: CONSOLE | e) Unit
main = do
  print $ ((+ 2) ∘ (* 0) ∘ (+ 17)) 4
  print $ true ∨ false
  print $ false ∧ true
  print $ 12 ≠ 14
  print $ 2 ∉ [1, 3, 5]
  print $ 5 ∈ [1, 3, 5]
  print $ "abcd" ≤ "bcde"
  print $ 144.0 ≥ zero
