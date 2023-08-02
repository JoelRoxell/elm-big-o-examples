module BigOExamples exposing (factorial, fibonacci, find, first, hasDuplicates)

{-| Some simple complexity examples in Elm
-}


{-| O(!n)
-}
factorial : Int -> Int
factorial n =
    if n <= 1 then
        1

    else
        n * factorial (n - 1)


{-| O(n)
-}
find : String -> List String -> Maybe String
find target stack =
    case stack of
        head :: rest ->
            if head == target then
                Just head

            else
                find target rest

        [] ->
            Nothing


{-| Quadratic = O(n^2) = O(n \* n)
-}
hasDuplicates : List a -> Bool
hasDuplicates list =
    case list of
        head :: rest ->
            if List.member head rest then
                True

            else
                hasDuplicates rest

        [] ->
            False


{-| Constant = O(1)
-}
first : List a -> Maybe a
first list =
    case list of
        head :: _ ->
            Just head

        [] ->
            Nothing


{-| O(2^n)
-}
fibonacci : Int -> Int
fibonacci number =
    if number <= 1 then
        number

    else
        fibonacci (number - 1) + fibonacci (number - 2)


type Node a
    = Node a (Maybe (Node a))
