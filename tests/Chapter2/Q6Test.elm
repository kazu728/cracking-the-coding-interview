module Chapter2.Q6Test exposing (..)

import Chapter2.LinkedList exposing (genNode)
import Chapter2.Q6
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Chapter2.Q6"
        [ test "isParindromeNode" <|
            \_ ->
                Chapter2.Q6.isParindromeNode (genNode [ 0, 1, 2, 1, 0 ])
                    |> Expect.equal True
        , test "isNotParindromeNode" <|
            \_ ->
                Chapter2.Q6.isParindromeNode (genNode [ 3, 0, 1, 2, 1, 0, 3, 4 ])
                    |> Expect.equal False
        ]
