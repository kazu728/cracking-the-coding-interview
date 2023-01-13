module Chapter1.Q6Test exposing (..)

import Chapter1.Q6
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Chapter1.Q6"
        [ test "compress" <|
            \_ ->
                Chapter1.Q6.compress "aabcccccaaa"
                    |> Expect.equal "a2b1c5a3"
        , test "no compress" <|
            \_ ->
                Chapter1.Q6.compress "abcd"
                    |> Expect.equal "a1b1c1d1"
        , test "compress long char" <|
            \_ ->
                Chapter1.Q6.compress
                    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
                    |> Expect.equal "a50"
        ]
