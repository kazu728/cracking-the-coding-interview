module Chapter2.Q3Test exposing (..)

import Chapter2.LinkedList exposing (Node(..), genNode)
import Chapter2.Q3
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Chapter2.Q3"
        [ test "remove 3" <|
            \() ->
                Chapter2.Q3.remove 3 (genNode [ 1, 3, 2, 5 ])
                    |> Expect.equal (genNode [ 1, 2, 5 ])
        , test "remove 2" <|
            \_ ->
                Chapter2.Q3.remove 2 (genNode [ 1, 3, 2, 5 ])
                    |> Expect.equal (genNode [ 1, 3, 5 ])
        ]
