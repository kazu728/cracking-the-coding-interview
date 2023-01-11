module Chapter1.Q3 exposing (..)


urlify : String -> String
urlify s =
    String.toList s
        |> List.map
            (\c ->
                if c == ' ' then
                    "%20"

                else
                    String.fromChar c
            )
        |> String.concat
