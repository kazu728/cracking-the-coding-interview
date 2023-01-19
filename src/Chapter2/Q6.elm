module Chapter2.Q6 exposing (..)

import Chapter2.LinkedList exposing (Node(..))


isParindromeNode : Maybe (Node comparable) -> Bool
isParindromeNode n =
    isEqual n (Chapter2.LinkedList.reverse n)


isEqual : Maybe (Node comparable) -> Maybe (Node comparable) -> Bool
isEqual a b =
    case ( a, b ) of
        ( Just (Node c), Just (Node d) ) ->
            if c.value == d.value then
                isEqual c.next d.next

            else
                False

        ( Just (Node _), Nothing ) ->
            False

        ( Nothing, Just (Node _) ) ->
            False

        ( Nothing, Nothing ) ->
            True
