{-# OPTIONS --safe --without-K #-}

module Tree where

open import Agda.Builtin.List
open import Agda.Builtin.Nat
open import Agda.Builtin.String

data Tree : Set where
  Leaf : Tree
  Fan : Tree -> Tree -> Tree

infixr 3 _++_
_++_ : String -> String -> String
_++_ = primStringAppend

showTree : Tree -> String
showTree Leaf = "."
showTree (Fan tₗ tᵣ) = "(" ++ showTree tₗ ++ showTree tᵣ ++ ")"

exTree : Tree
exTree = Fan (Fan Leaf Leaf) Leaf

binTree : Nat -> Tree
binTree zero = Leaf
binTree (suc n) = Fan (binTree n) (binTree n)

main : Nat -> Nat
main _ = zero
