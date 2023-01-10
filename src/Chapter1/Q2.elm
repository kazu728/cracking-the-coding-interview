module Chapter1.Q2 exposing (isPermutation, isPermutationWithDict)

import Dict exposing (Dict)


isPermutation : String -> String -> Bool
isPermutation a b =
    if String.length a /= String.length b then
        False

    else
        sort a == sort b


sort : String -> String
sort a =
    String.toList a
        |> List.sort
        |> String.fromList


type alias PermutationDict =
    Dict Char Int


isPermutationWithDict : String -> String -> Bool
isPermutationWithDict a b =
    let
        dict =
            Dict.empty
    in
    increment a dict
        |> decrement b
        |> Dict.values
        |> not
        << List.any (\e -> e < 0)


foldStringToDict : String -> PermutationDict -> (Maybe Int -> Maybe Int) -> PermutationDict
foldStringToDict s dict f =
    String.toList s
        |> List.foldr (\a -> \b -> Dict.update a f b) dict


increment : String -> PermutationDict -> PermutationDict
increment s dict =
    foldStringToDict s
        dict
        (\maybeN ->
            case maybeN of
                Just n ->
                    Just (n + 1)

                Nothing ->
                    Just 1
        )


decrement : String -> PermutationDict -> PermutationDict
decrement s dict =
    foldStringToDict s
        dict
        (\maybeN ->
            case maybeN of
                Just n ->
                    Just (n - 1)

                Nothing ->
                    Just -1
        )
