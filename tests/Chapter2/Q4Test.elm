module Chapter2.Q4Test exposing (..)

import Chapter2.LinkedList exposing (Node(..), genNode)
import Chapter2.Q4
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Chapter2.Q4"
        [ test "sort" <|
            \_ ->
                Chapter2.Q4.sort 5 (genNode [ 3, 5, 8, 5, 10, 2, 1 ])
                    |> Expect.equal (genNode [ 3, 2, 1, 5, 5, 8, 10 ])
        ]
