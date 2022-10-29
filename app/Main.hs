module Main (main) where

import Lib
import System.Random

maxAttempts :: Int
maxAttempts = 50

main :: IO ()
main = do
  putStrLn "=========== Guess the number game ==========="
  putStrLn "I will pick a number in the range of 1 to 100. You have to guess it. I will print *** depending on how close you are to the number."
  putStrLn "7 stars means you are very close, 1 star means you are too far."
  putStrLn ("You have " ++ show maxAttempts ++ " max attempts to guess the number")

  target <- randomRIO (1, 100) :: IO Int
  putStrLn "Okay, I have a number in mind. The number is in range of 1 to 100"

  makeGuessInLoopWithAttempts makeGuess target maxAttempts
  putStrLn "Ending game"
