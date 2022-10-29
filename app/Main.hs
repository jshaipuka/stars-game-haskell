module Main (main) where

import Lib

main :: IO ()
main = do
  print (hasWon 2 3)
  print (checkGuess 42 3)
  putStrLn (createStarsOfLen 5)