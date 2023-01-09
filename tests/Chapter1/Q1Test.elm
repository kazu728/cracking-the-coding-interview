module Chapter1.Q1Test exposing (..)

import Chapter1.Q1
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Chapter1.Q1"
        [ test "is unique" <| \_ -> Chapter1.Q1.isUniqueChar "abcdefghijklmnopqrstuvwxyz" |> Expect.equal True
        , test "is not unique" <| \_ -> Chapter1.Q1.isUniqueChar "abcnvakehrgoijerwapgfojrmegmreognmi" |> Expect.equal False
        ]
