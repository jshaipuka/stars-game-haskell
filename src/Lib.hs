module Lib
    (
      hasWon,
      getDistance,
      checkGuess,
      createStarsOfLen
    ) where

hasWon :: Int -> Int -> Bool
hasWon x y | x == y = True
hasWon _ _ = False

getDistance :: Int -> Int
getDistance distance | distance >= 64 = 1
getDistance distance | distance >= 32 = 2
getDistance distance | distance >= 16 = 3
getDistance distance | distance >= 8 = 4
getDistance distance | distance >= 4 = 5
getDistance distance | distance >= 2 = 6
getDistance _ = 7

checkGuess :: Int -> Int -> Int
checkGuess target guess = getDistance (abs (guess - target))

createStarsOfLen :: Int -> String
createStarsOfLen 0 = ""
createStarsOfLen n = "*" ++ createStarsOfLen (n - 1)