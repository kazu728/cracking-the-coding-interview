module Chapter2.Q2 exposing (..)


getAtFromTail : Int -> List a -> Maybe a
getAtFromTail k l =
    if k < 1 then
        Nothing

    else
        go False k 1 [] l


go : Bool -> Int -> Int -> List a -> List a -> Maybe a
go isReverse k count acc l =
    case ( l, isReverse ) of
        ( [], True ) ->
            Nothing

        ( [], False ) ->
            go True k 1 [] acc

        ( x :: xs, False ) ->
            go False k count (x :: acc) xs

        ( x :: xs, True ) ->
            if k == count then
                Just x

            else
                go True k (count + 1) acc xs
