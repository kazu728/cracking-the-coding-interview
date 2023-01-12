module Chapter1.Q5Test exposing (..)

import Array exposing (Array)
import Chapter1.Q5
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Chapter1.Q5"
        [ test "canCreateCharacterWithOneOperation" <|
            \_ ->
                Chapter1.Q5.canCreateCharacterByOneOperation "abcdefghijklmnopqrstuvwxyz" "abcdefghijklmnopqrstuvwxyza"
                    |> Expect.equal True
        , test "canNotCreateCharacterWithOneOperation" <|
            \_ ->
                Chapter1.Q5.canCreateCharacterByOneOperation "abcdefghijklmnopqrstuvwxyz" "abcdefghijklmnopqrstuvwx"
                    |> Expect.equal False
        ]


testCanCreateByInserting : Test
testCanCreateByInserting =
    describe "can create by inserting"
        [ test "canCreateByInserting" <|
            \_ ->
                Chapter1.Q5.isDiffrentLessThanOneChar (toArrayChar "asd") (toArrayChar "asdf") 0 True
                    |> Expect.equal True
        , test "canNotCreateByInserting" <|
            \_ ->
                Chapter1.Q5.isDiffrentLessThanOneChar (toArrayChar "agd") (toArrayChar "asdf") 0 True
                    |> Expect.equal False
        ]


testCanCreateByReplacing : Test
testCanCreateByReplacing =
    describe "can create by replacing"
        [ test "canCreateByReplacing" <|
            \_ ->
                Chapter1.Q5.canCreateByReplacing (toArrayChar "asdf") (toArrayChar "asdg") 0 True
                    |> Expect.equal True
        , test "canNotCreateByReplacing" <|
            \_ ->
                Chapter1.Q5.canCreateByReplacing (toArrayChar "asdfs") (toArrayChar "asdgr") 0 True
                    |> Expect.equal False
        ]


toArrayChar : String -> Array Char
toArrayChar a =
    Array.fromList <| String.toList a
