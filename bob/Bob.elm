module Bob exposing (..)
import Char exposing (isDigit)
import String exposing (toLower, toUpper, endsWith, trim, isEmpty)


type Phrase =
  Yell | Question | Silence | Other


hey : String -> String
hey str =
  case toPhrase str of
    Yell -> "Whoa, chill out!"
    Question -> "Sure."
    Silence -> "Fine. Be that way!"
    Other -> "Whatever."

toPhrase : String -> Phrase
toPhrase str =
  if isShouted str then Yell
  else if isQuestion str then Question
  else if isSilent str then Silence
  else Other


isShouted : String -> Bool
isShouted str =
  (toUpper str == str) && not (toLower str == str)

isQuestion : String -> Bool
isQuestion str =
  endsWith "?" str

isSilent : String -> Bool
isSilent str =
  str |> trim |> isEmpty
