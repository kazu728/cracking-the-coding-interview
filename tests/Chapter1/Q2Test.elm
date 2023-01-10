module Chapter1.Q2Test exposing (..)

import Chapter1.Q2
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Chapter1.Q2"
        [ testIsPermutation ]


testIsPermutation : Test
testIsPermutation =
    describe "isPermutation"
        [ test "is permutation" <|
            \_ ->
                let
                    input =
                        "abcdefghijklmnopqrstuvwxyz"
                in
                Chapter1.Q2.isPermutation input (String.reverse input)
                    |> Expect.equal True
        , test "is not permutation" <|
            \_ ->
                Chapter1.Q2.isPermutation "asdf" "kyng"
                    |> Expect.equal False
        ]


testIsPermutationWithDict : Test
testIsPermutationWithDict =
    describe "isPermutationWithDict"
        [ test "is permutation with dict" <|
            \_ ->
                let
                    input =
                        "abcdefghijklmnopqrstuvwxyz"
                in
                Chapter1.Q2.isPermutationWithDict input (String.reverse input)
                    |> Expect.equal True
        , test "is not permutation with dict" <|
            \_ ->
                Chapter1.Q2.isPermutationWithDict "asdf" "kyng"
                    |> Expect.equal False
        ]
