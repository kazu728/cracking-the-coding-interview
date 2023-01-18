module Chapter2.Q5 exposing (..)

import Chapter2.LinkedList exposing (Node(..))


sum : Maybe (Node Int) -> Maybe (Node Int) -> Int -> Maybe (Node Int)
sum a b carry =
    case ( a, b ) of
        ( Just (Node c), Just (Node d) ) ->
            go (c.value + d.value + carry) c.next d.next

        ( Just (Node c), Nothing ) ->
            go (c.value + carry) c.next Nothing

        ( Nothing, Just (Node d) ) ->
            go (d.value + carry) Nothing d.next

        ( Nothing, Nothing ) ->
            Nothing


go : Int -> Maybe (Node Int) -> Maybe (Node Int) -> Maybe (Node Int)
go result a b =
    Just <|
        Node
            { value = remainderBy 10 result
            , next =
                sum a
                    b
                    (if result > 10 then
                        1

                     else
                        0
                    )
            }
