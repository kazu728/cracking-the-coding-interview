module Chapter2.Q3 exposing (..)

import Chapter2.LinkedList exposing (Node(..))


remove : comparable -> Maybe (Node comparable) -> Maybe (Node comparable)
remove a node =
    Maybe.andThen
        (\currentNode ->
            case currentNode of
                Node element ->
                    Maybe.andThen
                        (\(Node nextNode) ->
                            Just <|
                                Node
                                    { element
                                        | next =
                                            if nextNode.value == a then
                                                nextNode.next

                                            else
                                                remove a element.next
                                    }
                        )
                        element.next
        )
        node
