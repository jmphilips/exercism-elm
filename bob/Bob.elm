module Bob exposing (..)
import Char exposing (isDigit)

hey str =
  let
    response =
      if (isQuestion str) && (onlyNumbers str) then
        "Sure."
      else if (isShouted str) && (isQuestion str) then
        "Whoa, chill out!"
      else if (isQuestion str) then
        "Sure."
      else if (isSilent str) then
        "Fine. Be that way!"
      else if (onlyNumbers str) then
        "Whatever."
      else if (isShouted str) then
        "Whoa, chill out!"
      else
        "Whatever."
  in
    response

deleteEmpties : String -> String
deleteEmpties str =
  str
  |> String.split "\n"
  |> String.join ""
  |> String.split "\t"
  |> String.join ""
  |> String.split " "
  |> String.join ""

deletePunct : String -> String
deletePunct str =
  str
  |> String.split ", "
  |> String.join ""
  |> String.split "."
  |> String.join ""
  |> String.split "'"
  |> String.join ""
  |> String.split "?"
  |> String.join ""

isSilent : String -> Bool
isSilent str =
  (deleteEmpties str) == ""

isShouted : String -> Bool
isShouted str =
  String.toUpper str == str

isQuestion : String -> Bool
isQuestion str =
   List.head (List.reverse (String.split "" str)) == Just "?"

-- includesLetters : String -> Bool
onlyNumbers str =
  String.all isDigit (deletePunct str)