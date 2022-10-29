module Main (main) where

import Lib
import System.Random

main :: IO ()
main = do
  putStrLn "Starting game"
  
  putStrLn "Random num in range 1 - 7"
  number <- randomRIO (1,7) :: IO Int
  print number
  let target = 42
  makeGuessInLoop makeGuess target
  putStrLn "Ending game"

--  putStrLn "Starting game"
--  none <- print 4
--  answer <- isGoodChar getChar
--  print answer
--  print (hasWon 2 3)
--  print (checkGuess 42 3)
--  putStrLn (createStarsOfLen 5)