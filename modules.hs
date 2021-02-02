import Data.List (nub, sort)

numUniques :: (Eq a) => [a] -> Int
numUniques = length. nub
