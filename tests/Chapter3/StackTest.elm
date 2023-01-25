module Chapter3.StackTest exposing (..)

import Chapter3.Stack as Stack
import Expect
import Test exposing (..)


suite : Test
suite =
    let
        example =
            [ { data = 1, min = 1 }, { data = 5, min = 4 }, { data = 4, min = 4 } ]
    in
    describe "Stack"
        [ test "is empty" <|
            \_ ->
                Stack.isEmpty []
                    |> Expect.equal True
        , test "is not rmpty" <|
            \_ ->
                Stack.isEmpty
                    example
                    |> Expect.equal False
        , test "push" <|
            \_ ->
                Stack.push 2 example
                    |> Expect.equal ({ data = 2, min = 1 } :: example)
        , test "pop" <|
            \_ ->
                Stack.pop example
                    |> Expect.equal (Just ( { data = 1, min = 1 }, [ { data = 5, min = 4 }, { data = 4, min = 4 } ] ))
        , test "pop for empty stack" <|
            \_ ->
                Stack.pop []
                    |> Expect.equal Nothing
        , test "min" <|
            \_ ->
                Stack.min ({ data = 2, min = 1 } :: example)
                    |> Expect.equal (Just 1)
        , test "min after pop" <|
            \_ ->
                let
                    input =
                        Maybe.andThen (\( _, rest ) -> Stack.pop rest) (Stack.pop ({ data = 2, min = 1 } :: example))
                in
                case input of
                    Just ( _, rest ) ->
                        Stack.min rest
                            |> Expect.equal (Just 4)

                    Nothing ->
                        Expect.fail ""
        ]
