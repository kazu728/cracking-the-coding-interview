module Chapter2.Q2Test exposing (..)

import Chapter2.Q2
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Chapater.Q2"
        [ test "getTailElement" <|
            \_ ->
                Chapter2.Q2.getAtFromTail 1 [ 1, 2, 3, 4 ]
                    |> Expect.equal (Just 4)
        , test "getAt3" <|
            \_ ->
                Chapter2.Q2.getAtFromTail 3 [ 1, 2, 3, 4, 5 ]
                    |> Expect.equal (Just 3)
        , test "getNothing" <|
            \_ ->
                Chapter2.Q2.getAtFromTail 6 [ 1, 2, 3, 4, 5 ]
                    |> Expect.equal Nothing
        ]
