module Lib
  ( hasWon,
    getDistance,
    checkGuess,
    createStarsOfLen,
    isGoodChar,
    makeGuess,
    makeGuessInLoop
  )
where

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

isGoodCharPure :: Char -> IO Bool
isGoodCharPure 'a' = pure True
isGoodCharPure _ = pure False

--isGoodCharPure :: Char -> Bool
--isGoodCharPure 'a' = True
--isGoodCharPure _ = False
--
isGoodChar :: IO Char -> IO Bool
isGoodChar c = do
  v <- c
  isGoodCharPure v

makeGuess :: IO Int
makeGuess = do
    putStrLn "Make a guess:"
    input <- getLine
    return (read input)

makeGuessInLoop :: IO Int -> IO ()
makeGuessInLoop c = do
  v <- c
  if v == 0 then putStrLn "Thank you for playing!" else makeGuessInLoop makeGuess
--makeGuessInLoop n = do
--  makeGuessInLoop makeGuess