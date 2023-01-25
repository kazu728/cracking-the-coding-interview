module Chapter3.Q1 exposing (..)

import Chapter3.Stack exposing (Stack)


genMultiStack : Stack a -> ( Stack a, Stack a, Stack a )
genMultiStack l =
    let
        ( a, b ) =
            List.partition (\_ -> True) l

        ( c, _ ) =
            List.partition (\_ -> True) l
    in
    ( a, b, c )
