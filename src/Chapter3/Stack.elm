module Chapter3.Stack exposing (..)

import List exposing (head)


type alias Stack comparable =
    List { data : comparable, min : comparable }


isEmpty : Stack a -> Bool
isEmpty stack =
    stack == []


push : comparable -> Stack comparable -> Stack comparable
push x stack =
    let
        head =
            pop stack
    in
    case head of
        Nothing ->
            { data = x, min = x } :: stack

        Just ( headValue, _ ) ->
            { data = x
            , min =
                if headValue.min < x then
                    headValue.min

                else
                    x
            }
                :: stack


pop : Stack comparable -> Maybe ( { data : comparable, min : comparable }, Stack comparable )
pop stack =
    case stack of
        [] ->
            Nothing

        x :: xs ->
            Just ( x, xs )


min : Stack comparable -> Maybe comparable
min stack =
    Maybe.andThen (\( head, _ ) -> Just head.min) (pop stack)
