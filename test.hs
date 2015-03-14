doubleMe x = x + x

doubleUs x y = x*2 + y*2

doubleSmallNumber :: (Num a, Ord a) => a -> a
doubleSmallNumber x = if x > 100
                        then x
                        else x * 2

-- fizzBuzzifyOld x = if x `mod` 3 == 0
--                     then "Fizz"
--                 else if x `mod` 5 == 0
--                     then "Buzz"
--                 else
--                     show x

fizzBuzzify :: Integer -> String
fizzBuzzify x
    | x `mod` 15 == 0   = "FizzBuzz"
    | x `mod` 3 == 0    = "Fizz"
    | x `mod` 5 == 0    = "Buzz"
    | otherwise         = show x

fizzBuzz :: [String]
fizzBuzz = [fizzBuzzify x | x <- [1..] ]

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
           deriving (Eq, Ord, Show, Read, Bounded, Enum)
