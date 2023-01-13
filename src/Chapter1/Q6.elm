module Chapter1.Q6 exposing (..)

import Array exposing (Array)


compress : String -> String
compress a =
    go "" (String.toList a |> Array.fromList) 0 0


go : String -> Array Char -> Int -> Int -> String
go acc chars index count =
    case Array.get (index - 1) chars of
        Just preChar ->
            case Array.get index chars of
                Just currentChar ->
                    if preChar == currentChar then
                        go acc chars (index + 1) (count + 1)

                    else
                        go (acc ++ (String.fromChar preChar ++ String.fromInt count)) chars (index + 1) 1

                Nothing ->
                    acc ++ (String.fromChar preChar ++ String.fromInt count)

        Nothing ->
            go "" chars (index + 1) (count + 1)
