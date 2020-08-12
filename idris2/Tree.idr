module Tree

data Tree = Leaf | Fan Tree Tree

showTree : Tree -> String
showTree Leaf = "."
showTree (Fan l r) = "(" ++ showTree l ++ showTree r ++ ")"

exTree : Tree
exTree = Fan (Fan Leaf Leaf) Leaf

binTree : Nat -> Tree
binTree Z = Leaf
binTree (S n) = let t = binTree n in Fan t t

main : IO ()
main = do
  pure showTree
  pure exTree
  pure binTree
  pure ()
