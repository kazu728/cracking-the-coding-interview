module Chapter2.Q1Test exposing (..)

import Chapter2.Q1
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Chapter2.Q1"
        [ test "removeDuplicateElement" <|
            \_ ->
                Chapter2.Q1.removeDuplicateElement [ 1, 2, 4, 5, 7, 8, 2, 6, 5, 2, 9 ]
                    |> Expect.equal [ 1, 2, 4, 5, 7, 8, 6, 9 ]
        , test "remove nothing " <|
            \_ ->
                Chapter2.Q1.removeDuplicateElement [ 1, 2, 4, 5, 7, 8, 6, 9 ]
                    |> Expect.equal [ 1, 2, 4, 5, 7, 8, 6, 9 ]
        ]
