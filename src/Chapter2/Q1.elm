module Chapter2.Q1 exposing (..)

import Dict exposing (Dict)


removeDuplicateElement : List comparable -> List comparable
removeDuplicateElement l =
    go Dict.empty l []


go : Dict comparable Bool -> List comparable -> List comparable -> List comparable
go dict l acc =
    case l of
        [] ->
            List.reverse acc

        x :: xs ->
            case Dict.get x dict of
                Just _ ->
                    go dict xs acc

                Nothing ->
                    go (Dict.insert x True dict) xs (x :: acc)
