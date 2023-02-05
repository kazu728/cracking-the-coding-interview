module Chapter3.QueueTest exposing (..)

import Array
import Chapter3.Queue
import Expect
import Test exposing (..)


suite : Test
suite =
    let
        queue =
            Chapter3.Queue.Queue (Array.initialize 5 (always 0)) 0 0
    in
    describe "QueueTest"
        [ test "enqueue" <|
            \_ ->
                Chapter3.Queue.enqueue 1 queue
                    |> Chapter3.Queue.enqueue 12
                    |> Chapter3.Queue.enqueue 5
                    |> Expect.equal (Chapter3.Queue.Queue (Array.fromList [ 1, 12, 5, 0, 0 ]) 0 3)
        , test "dequeue" <|
            \_ ->
                Chapter3.Queue.enqueue 1 queue
                    |> Chapter3.Queue.enqueue 12
                    |> Chapter3.Queue.enqueue 5
                    |> Chapter3.Queue.enqueue 7
                    |> Chapter3.Queue.enqueue 2
                    |> Chapter3.Queue.dequeue
                    |> Maybe.andThen (\( _, q ) -> Chapter3.Queue.dequeue q)
                    |> Maybe.andThen (\( _, q ) -> Chapter3.Queue.dequeue q)
                    |> Expect.equal (Just ( 5, Chapter3.Queue.Queue (Array.fromList [ 1, 12, 5, 7, 2 ]) 3 5 ))
        ]
