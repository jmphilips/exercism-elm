module Leap exposing (..)

type Year = LeapYear | NonLeapYear

toYear : Int -> Year
toYear year =
  if divisibleByFourHundred year then
    LeapYear
  else if (divisibleByFour year) && not (divisibleByHundred year) then
    LeapYear
  else
    NonLeapYear


isLeapYear : Int -> Bool
isLeapYear year =
  case toYear year of
    LeapYear -> True
    NonLeapYear -> False


divisibleByFour : Int -> Bool
divisibleByFour year =
  (year % 4) == 0

divisibleByHundred : Int -> Bool
divisibleByHundred year =
  (year % 100) == 0

divisibleByFourHundred : Int -> Bool
divisibleByFourHundred year =
  (year % 400) == 0