module Chapter3.Stack exposing (..)


type alias Stack a =
    List a


isEmpty : Stack a -> Bool
isEmpty stack =
    stack == []


push : a -> Stack a -> Stack a
push x stack =
    x :: stack


pop : Stack a -> Maybe ( a, Stack a )
pop stack =
    case stack of
        [] ->
            Nothing

        x :: xs ->
            Just ( x, xs )
