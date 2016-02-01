module Fancy 
  ( (∘)
  -- , (×)
  , (∧)
  , (∨)
  , notEq, (≠)
  , (∈)
  , notElem, (∉)
  , lessOrEq, (≤)
  , greaterOrEq, (≥)
  ) where

import Prelude
  ( class Ord , class Eq
  , (>=) , (<=) , (/=)
  , disj, conj, compose, not
  )

import Data.Foldable (class Foldable, elem)

infixr 9 compose as ∘

-- SyntaxError: Octal literals are not allowed in strict mode.
-- :\
--infixl 7 mul as ×

infixr 3 conj as ∧

infixr 2 disj as ∨

infixr 5 elem as ∈

notElem :: ∀ f a. (Eq a, Foldable f) ⇒ a → f a → Boolean
notElem x xs = not (x ∈ xs)
infixr 5 notElem as ∉

notEq :: ∀ a. (Eq a) ⇒ a → a → Boolean
notEq = (/=)
infix 4 notEq as ≠

lessOrEq :: ∀ a. (Ord a) ⇒ a → a → Boolean
lessOrEq = (<=)
infixl 4 lessOrEq as ≤

greaterOrEq :: ∀ a. (Ord a) ⇒ a → a → Boolean
greaterOrEq = (>=)
infixl 4 greaterOrEq as ≥
