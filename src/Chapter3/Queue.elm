module Chapter3.Queue exposing (..)

import Array exposing (Array)


type alias Queue a =
    { data : Array a, head : Int, tail : Int }


enqueue : a -> Queue a -> Queue a
enqueue element queue =
    { queue
        | data = Array.set queue.tail element queue.data
        , tail = queue.tail + 1
    }


dequeue : Queue a -> Maybe ( a, Queue a )
dequeue queue =
    Array.get queue.head queue.data
        |> Maybe.map (\a -> ( a, { queue | head = queue.head + 1 } ))
