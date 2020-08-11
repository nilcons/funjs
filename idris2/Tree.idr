module Tree

public export
data Tree = Leaf | Fan Tree Tree

export
showTree : Tree -> String
showTree Leaf = "."
showTree (Fan l r) = "(" ++ showTree l ++ showTree r ++ ")"

export
exTree : Tree
exTree = Fan (Fan Leaf Leaf) Leaf

-- export
-- binTree : Nat -> Tree
-- binTree Z = Leaf
-- binTree (S n) = Fan t t where
--   t : Tree
--   t = binTree n

export
binTree : Nat -> Tree
binTree Z = Leaf
binTree (S n) = let t = binTree n in Fan t t

main : IO ()
main = do
  pure showTree
  pure exTree
  pure binTree
  pure ()
