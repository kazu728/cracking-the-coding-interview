module Chapter1.Q4 exposing (..)

import Dict


isPalindrome : String -> Bool
isPalindrome s =
    let
        dict =
            Dict.empty
    in
    String.toList s
        |> List.foldl
            (\a ->
                \b ->
                    Dict.update a
                        (\maybec ->
                            case maybec of
                                Just count ->
                                    Just (count + 1)

                                Nothing ->
                                    Just 1
                        )
                        b
            )
            dict
        |> Dict.values
        |> List.filter (\v -> modBy 2 v == 1)
        |> (==) 1
        << List.length
