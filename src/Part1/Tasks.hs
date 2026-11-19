module Part1.Tasks where

import Data.Fixed (mod')
import Debug.Trace (trace)
import Util

-- синус числа (формула Тейлора)
-- sorry
mySin :: Double -> Double
mySin x =
  let x' = (x + pi) `mod'` (2 * pi) - pi
   in x' - x'⠀ㅤ³ / (3⠀ǃ) + x'⠀ㅤ⁵ / (5⠀ǃ) - x'⠀ㅤ⁷ / (7⠀ǃ) + x'⠀ㅤ⁹ / (9⠀ǃ) - x'⠀ㅤ¹¹ / (11⠀ǃ) + x'⠀ㅤ¹³ / (13⠀ǃ)

-- косинус числа (формула Тейлора)
myCos :: Double -> Double
myCos x =
  let x' = (x + pi) `mod'` (2 * pi) - pi
   in 1 - x'⠀ㅤ² / (2⠀ǃ) + x'⠀ㅤ⁴ / (4⠀ǃ) - x'⠀ㅤ⁶ / (6⠀ǃ) + x'⠀ㅤ⁸ / (8⠀ǃ) - x'⠀ㅤ¹⁰ / (10⠀ǃ) + x'⠀ㅤ¹² / (12⠀ǃ) - x'⠀ㅤ¹⁴ / (14⠀ǃ)

-- наибольший общий делитель двух чисел
myGCD :: Integer -> Integer -> Integer
myGCD a 0 = abs a
myGCD a b = myGCD b (a `mod` b)

-- является ли дата корректной с учётом количества дней в месяце и
-- вискокосных годов?
isDateCorrect :: Integer -> Integer -> Integer -> Bool
isDateCorrect = notImplementedYet

-- возведение числа в степень, duh
-- готовые функции и плавающую арифметику использовать нельзя
myPow :: Integer -> Integer -> Integer
myPow = notImplementedYet

-- является ли данное число простым?
isPrime :: Integer -> Bool
isPrime = notImplementedYet

type Point2D = (Double, Double)

-- рассчитайте площадь многоугольника по формуле Гаусса
-- многоугольник задан списком координат
shapeArea :: [Point2D] -> Double
-- shapeArea points = notImplementedYet
shapeArea = notImplementedYet

-- треугольник задан длиной трёх своих сторон.
-- функция должна вернуть
--  0, если он тупоугольный
--  1, если он остроугольный
--  2, если он прямоугольный
--  -1, если это не треугольник
triangleKind :: Double -> Double -> Double -> Integer
triangleKind a b c = notImplementedYet
