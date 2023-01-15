module Chapter2.LinkedList exposing (..)


type Node comparable
    = Node { value : comparable, next : Maybe (Node comparable) }


genNode : List comparable -> Maybe (Node comparable)
genNode l =
    case l of
        [] ->
            Nothing

        x :: xs ->
            Just <| Node { value = x, next = genNode xs }
