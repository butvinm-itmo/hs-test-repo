module Part1.Tasks where

import Data.Fixed (mod')
import Debug.Trace (trace)
import Util (notImplementedYet)

-- синус числа (формула Тейлора)
mySin :: Double -> Double
mySin x =
  let x' = (x + pi) `mod'` (2 * pi) - pi
   in x'
        - (x' ** 3 / (2 * 3))
        + (x' ** 5 / (2 * 3 * 4 * 5))
        - (x' ** 7 / (2 * 3 * 4 * 5 * 6 * 7))
        + (x' ** 9 / (2 * 3 * 4 * 5 * 6 * 7 * 8 * 9))
        - (x' ** 11 / (2 * 3 * 4 * 5 * 6 * 7 * 8 * 9 * 10 * 11))
        + (x' ** 13 / (2 * 3 * 4 * 5 * 6 * 7 * 8 * 9 * 10 * 11 * 12 * 13))

-- косинус числа (формула Тейлора)
myCos :: Double -> Double
myCos = notImplementedYet

-- наибольший общий делитель двух чисел
myGCD :: Integer -> Integer -> Integer
myGCD = notImplementedYet

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
