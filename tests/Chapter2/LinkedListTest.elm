module Chapter2.LinkedListTest exposing (..)

import Chapter2.LinkedList exposing (Node(..))
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Chapter2.LinkedList"
        [ test "getNode" <|
            \_ ->
                let
                    input =
                        Just <|
                            Node
                                { value = 3
                                , next =
                                    Just <|
                                        Node
                                            { value = 5
                                            , next =
                                                Just <|
                                                    Node
                                                        { value = 8
                                                        , next =
                                                            Just <|
                                                                Node
                                                                    { value = 5
                                                                    , next =
                                                                        Just <|
                                                                            Node
                                                                                { value = 10
                                                                                , next =
                                                                                    Just <|
                                                                                        Node
                                                                                            { value = 2
                                                                                            , next =
                                                                                                Just <|
                                                                                                    Node
                                                                                                        { value = 1
                                                                                                        , next = Nothing
                                                                                                        }
                                                                                            }
                                                                                }
                                                                    }
                                                        }
                                            }
                                }
                in
                Chapter2.LinkedList.genNode [ 3, 5, 8, 5, 10, 2, 1 ]
                    |> Expect.equal input
        , test "reverse" <|
            \_ ->
                Chapter2.LinkedList.reverse (Chapter2.LinkedList.genNode [ 3, 5, 8, 5, 10, 2, 1 ])
                    |> Expect.equal (Chapter2.LinkedList.genNode [ 1, 2, 10, 5, 8, 5, 3 ])
        ]
