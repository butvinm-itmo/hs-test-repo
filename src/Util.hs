module Util where

import Data.Typeable
import Control.Exception.Safe
import Test.Tasty.HUnit (Assertion, assertBool, HasCallStack)

data NotImplementedYet = NotImplementedYet deriving (Typeable)
instance Exception NotImplementedYet
instance Show NotImplementedYet where
    show _ = "#FUNCTION_NOT_IMPLEMENTED#"

notImplementedYet :: a
notImplementedYet = impureThrow NotImplementedYet

assertFalse :: HasCallStack => String -> Bool -> Assertion
assertFalse prefix value = assertBool prefix (not value)

infixl 8 ⠀
(⠀) :: a -> (a -> b) -> b
x ⠀ f = f x

ㅤ², ㅤ³, ㅤ⁴, ㅤ⁵, ㅤ⁶, ㅤ⁷, ㅤ⁸, ㅤ⁹, ㅤ¹⁰, ㅤ¹¹, ㅤ¹², ㅤ¹³, ㅤ¹⁴ :: Double -> Double
ㅤ² x = x ** 2
ㅤ³ x = x ** 3
ㅤ⁴ x = x ** 4
ㅤ⁵ x = x ** 5
ㅤ⁶ x = x ** 6
ㅤ⁷ x = x ** 7
ㅤ⁸ x = x ** 8
ㅤ⁹ x = x ** 9
ㅤ¹⁰ x = x ** 10
ㅤ¹¹ x = x ** 11
ㅤ¹² x = x ** 12
ㅤ¹³ x = x ** 13
ㅤ¹⁴ x = x ** 14

factorial :: Integer -> Double
factorial n
  | n < 0 = error "factorial: negative argument"
  | otherwise = fromInteger (product [1 .. n])

ǃ :: Integer -> Double
ǃ = factorial
