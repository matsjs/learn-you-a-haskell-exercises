-- This function should print a single digit number as English text, or "unknown" if it's out of the range 0-9
englishDigit :: Int -> String
englishDigit 1 = "One"
englishDigit 2 = "Two"
englishDigit 3 = "Three"
englishDigit 4 = "Four"
englishDigit 5 = "Five"
englishDigit 6 = "Six"
englishDigit 7 = "Seven"
englishDigit 8 = "Eight"
englishDigit 9 = "Nine"
englishDigit 0 = "Nought"
englishDigit x = "Not in range 0-9"

englishDigit' :: Int -> String
englishDigit' x
    |x < 0 || x > 9 = "Not in range 0-9"
    |otherwise = ["Nought", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"] !! x

-- given a tuple, divide fst by snd, using pattern matching. 
-- it should return undefined for division by zero
divTuple :: (Eq a, Fractional a) => (a, a) -> a
divTuple (_, 0) = undefined
divTuple (x, y) = x/y

-- if the first three numbers in a list are all zero, return True
threeZeroList :: [Int] -> Bool
threeZeroList (0:0:0:_) = True
threeZeroList x = False
