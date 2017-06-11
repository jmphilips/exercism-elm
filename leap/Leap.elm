module Leap exposing (..)

isLeapYear : Int -> Bool
isLeapYear year =
  let
    response =
    if divisibleByFourHundred year then
      True
    else if divisibleByHundred year then
      False
    else if divisibleByFour year then
      True
    else
      False
  in
    response



divisibleByFour : Int -> Bool
divisibleByFour year =
  (year % 4) == 0

divisibleByHundred : Int -> Bool
divisibleByHundred year =
  (year % 100) == 0

divisibleByFourHundred : Int -> Bool
divisibleByFourHundred year =
  (year % 400) == 0