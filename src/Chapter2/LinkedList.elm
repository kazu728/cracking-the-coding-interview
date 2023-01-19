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


reverse : Maybe (Node comparable) -> Maybe (Node comparable)
reverse maybeNode =
    go maybeNode Nothing


go : Maybe (Node comparable) -> Maybe (Node comparable) -> Maybe (Node comparable)
go maybeNode prevNode =
    case maybeNode of
        Just (Node currentNode) ->
            go
                currentNode.next
                (Just (Node { currentNode | next = prevNode }))

        Nothing ->
            prevNode
