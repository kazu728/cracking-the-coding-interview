module Chapter2.Q5Test exposing (..)

import Chapter2.LinkedList exposing (genNode)
import Chapter2.Q5 exposing (sum)
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "ChapterQ2.5"
        [ test "sum" <|
            \_ ->
                sum (genNode [ 7, 1, 6 ]) (genNode [ 5, 9, 2 ]) 0
                    |> Expect.equal (genNode [ 2, 1, 9 ])
        ]
