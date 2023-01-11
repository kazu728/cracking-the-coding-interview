module Chapter1.Q4Test exposing (..)

import Chapter1.Q4
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Chapter1.Q4"
        [ test "is palindrome" <|
            \_ ->
                Chapter1.Q4.isPalindrome "tactcoapapa"
                    |> Expect.equal True
        , test "is not palindrome" <|
            \_ ->
                Chapter1.Q4.isPalindrome "tactcoapapat"
                    |> Expect.equal False
        ]
