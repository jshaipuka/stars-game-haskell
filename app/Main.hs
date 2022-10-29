module Main (main) where

import Lib

main :: IO ()
main = do
  makeGuessInLoop makeGuess
  putStrLn "Starting game"

--  putStrLn "Starting game"
--  none <- print 4
--  answer <- isGoodChar getChar
--  print answer
--  print (hasWon 2 3)
--  print (checkGuess 42 3)
--  putStrLn (createStarsOfLen 5)