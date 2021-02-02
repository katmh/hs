import Data.List (nub, sort)
import Geometry.Sphere

numUniques :: (Eq a) => [a] -> Int
numUniques = length. nub
