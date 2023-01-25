module Chapter3.StackTest exposing (..)

import Chapter3.Stack
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Stack"
        [ test "is empty" <|
            \_ ->
                Chapter3.Stack.isEmpty []
                    |> Expect.equal True
        , test "is not rmpty" <|
            \_ ->
                Chapter3.Stack.isEmpty [ 1, 5, 4 ]
                    |> Expect.equal False
        , test "push" <|
            \_ ->
                Chapter3.Stack.push 2 [ 1, 5, 4 ]
                    |> Expect.equal [ 2, 1, 5, 4 ]
        , test "pop" <|
            \_ ->
                Chapter3.Stack.pop [ 1, 5, 4 ]
                    |> Expect.equal (Just ( 1, [ 5, 4 ] ))
        , test "pop for empty stack" <|
            \_ ->
                Chapter3.Stack.pop []
                    |> Expect.equal Nothing
        ]
