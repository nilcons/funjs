{-# OPTIONS --without-K #-}

module Tree where

open import Agda.Builtin.List
open import Agda.Builtin.Nat
open import Agda.Builtin.String

data Tree : Set where
  Leaf : Tree
  Fan : Tree -> Tree -> Tree

{-# COMPILE JS  Tree = function (x, v) {
  if ('left' in x) { return v.Fan(x.left, x.right); }
  else { return v.Leaf(); }
} #-}
{-# COMPILE JS  Leaf = {} #-}
{-# COMPILE JS  Fan = function (l) { return function (r) { return { left: l, right: r }; }; } #-}

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
