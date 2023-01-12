module Chapter1.Q5 exposing (..)

import Array exposing (Array)


canCreateCharacterByOneOperation : String -> String -> Bool
canCreateCharacterByOneOperation a b =
    let
        toArray =
            Array.fromList << String.toList

        ( c, d ) =
            Tuple.mapBoth toArray toArray ( a, b )
    in
    if 1 < abs (String.length a - String.length b) then
        False

    else if String.length a == String.length b then
        canCreateByReplacing c d 0 True

    else if Array.length c <= Array.length d then
        isDiffrentLessThanOneChar c d 0 True

    else
        isDiffrentLessThanOneChar d c 0 True


isDiffrentLessThanOneChar : Array Char -> Array Char -> Int -> Bool -> Bool
isDiffrentLessThanOneChar shorter longer index canCreate =
    case ( Array.length shorter == index, canCreate ) of
        ( True, True ) ->
            True

        ( True, False ) ->
            False

        ( _, False ) ->
            isDiffrentLessThanOneChar shorter longer (index + 1) False

        _ ->
            isDiffrentLessThanOneChar shorter longer (index + 1) <| isSameChar index shorter longer


canCreateByReplacing : Array Char -> Array Char -> Int -> Bool -> Bool
canCreateByReplacing a b index canCreate =
    case Array.get index a of
        Just _ ->
            case ( isSameChar index a b, canCreate ) of
                ( True, True ) ->
                    canCreateByReplacing a b (index + 1) True

                ( False, False ) ->
                    False

                _ ->
                    canCreateByReplacing a b (index + 1) False

        Nothing ->
            True


isSameChar : Int -> Array Char -> Array Char -> Bool
isSameChar index a b =
    Maybe.withDefault ' ' (Array.get index a) == Maybe.withDefault ' ' (Array.get index b)
