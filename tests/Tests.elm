module Tests exposing (suite)

import BigOExamples exposing (factorial, find, first)
import Dict
import Expect
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "Big O examples"
        [ test "Factorial" <|
            \_ ->
                Expect.equal (factorial 4) 24
        , test "Linear" <|
            \_ ->
                Expect.equal (Just "React Andy")
                    (find
                        "React Andy"
                        [ "Cool, your framework makes us wrap everything in your pattern. Neat..."
                        , "Wasam? Are we there yet?"
                        , "React Andy"
                        ]
                    )
        , test "Constant" <|
            -- If we assume we never get collisions
            \_ ->
                let
                    res =
                        first
                            [ 1
                            , 2
                            ]
                in
                Expect.equal res (Just 1)
        ]
