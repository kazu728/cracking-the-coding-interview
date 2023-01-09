module Chapter1.Q1 exposing (isUniqueChar)

import Dict exposing (Dict)


isUniqueChar : String -> Bool
isUniqueChar s =
    (String.toList >> include Dict.empty) s


include : Dict Char Bool -> List Char -> Bool
include dict l =
    case l of
        [] ->
            True

        x :: xs ->
            case Dict.get x dict of
                Just _ ->
                    False

                Nothing ->
                    include (Dict.insert x True dict) xs
