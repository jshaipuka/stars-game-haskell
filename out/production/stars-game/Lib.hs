module Lib
  (
    getDistance,
    checkGuess,
    createStarsOfLen,
    isGoodChar,
    makeGuess,
    makeGuessInLoop
  )
where

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

makeGuess :: IO Int
makeGuess = do
    putStrLn "Make a guess:"
    input <- getLine
    return (read input)

makeGuessInLoop :: IO Int -> Int -> IO ()
makeGuessInLoop input target = do
  guess <- input
  if guess == target
    then putStrLn "You won! Thank you for playing!"
    else putStrLn (createStarsOfLen (checkGuess target guess)) >> makeGuessInLoop makeGuess target