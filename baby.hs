doubleMe x = x + x
doubleUs x y = x*2 + y*2

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

lucky :: (Integral a) => a -> String
lucky 7 = "Lucky number seven!"
lucky x = "Sorry, out of luck!"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

nameify :: String -> String
nameify "mike" = "micycle"
nameify "bike" = "bichael"

third :: (a, b, c) -> c
third (_, _, z) = z

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs
-- sum' = foldl (+) 0

initials :: String -> String -> String
initials (f:_) (l:_) = [f] ++ ". " ++ [l] ++ "."

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
  | x > maxTail = x
  | otherwise = maxTail
  where maxTail = maximum' xs

compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = compare 100

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x acc -> if p x then x : acc else acc) []

last' :: [a] -> a
last = foldl1 (\_ x -> x)
