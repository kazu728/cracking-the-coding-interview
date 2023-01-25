module Chapter3.Q1Test exposing (..)

import Chapter3.Q1
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Chapter3.Q1"
        [ test "genStacl" <|
            \_ ->
                Chapter3.Q1.genMultiStack []
                    |> Expect.equal ( [], [], [] )
        ]
