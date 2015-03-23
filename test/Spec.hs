module Main (main, spec) where

import Test.Hspec
import Game.FizzBuzz

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "fizzbuzz" $ do
        it "should return Fizz if int is dividable by 3" $
            fizzbuzz 3 `shouldBe` "Fizz"

        it "should return Buzz if int is dividable by 5" $
            fizzbuzz 5 `shouldBe` "Buzz"

        it "should return FizzBuzz if int dividable by 3 and 5" $
            fizzbuzz 15 `shouldBe` "FizzBuzz"

        it "should return the int as string if not dividable by 3 or 5" $
            fizzbuzz 1 `shouldBe` "1"
