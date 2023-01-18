module Chapter2.Q4 exposing (..)

import AssocList as Dict exposing (Dict)
import Chapter2.LinkedList exposing (Node(..), genNode)


type Kind
    = LessThanN
    | EqualN
    | GreaterThanN


type alias SortDict =
    Dict Kind (List Int)


sort : Int -> Maybe (Node Int) -> Maybe (Node Int)
sort n l =
    Maybe.andThen
        (\_ ->
            dictionalize n l Dict.empty
                |> concat
        )
        l


dictionalize : Int -> Maybe (Node Int) -> SortDict -> SortDict
dictionalize n node dict =
    case node of
        Just (Node { value, next }) ->
            dictionalize
                n
                next
                (insertToDict
                    (if value < n then
                        LessThanN

                     else if value == n then
                        EqualN

                     else
                        GreaterThanN
                    )
                    value
                    dict
                )

        Nothing ->
            dict


insertToDict : Kind -> Int -> SortDict -> SortDict
insertToDict key value dict =
    case Dict.get key dict of
        Just list ->
            Dict.insert key (value :: list) dict

        Nothing ->
            Dict.insert key [ value ] dict


concat : SortDict -> Maybe (Node Int)
concat dict =
    List.map (\k -> Maybe.withDefault [] (Dict.get k dict))
        [ GreaterThanN, EqualN, LessThanN ]
        |> List.concat
        |> List.reverse
        |> genNode
