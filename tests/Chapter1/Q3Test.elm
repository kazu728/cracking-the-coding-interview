module Chapter1.Q3Test exposing (..)

import Chapter1.Q3
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Chapter1.Q3"
        [ test "urlify" <|
            \_ ->
                Chapter1.Q3.urlify "Mr John Smith"
                    |> Expect.equal "Mr%20John%20Smith"
        ]
