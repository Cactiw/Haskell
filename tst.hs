#! /usr/bin/runhaskell

data BiTree a = Leaf a | BiTree a (BiTree a) (BiTree a)

maxVal:: (Ord a) => BiTree a -> a
maxVal (Leaf a) = a
maxVal (BiTree v l r) = (max v (max (maxVal l) (maxVal r)))

main = print (maxVal (BiTree 1 (BiTree 10 (Leaf 5) (Leaf 6)) (Leaf 2)))

