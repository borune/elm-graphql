-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Normalize.InputObject exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import Normalize.Enum.Language
import Normalize.Interface
import Normalize.Object
import Normalize.Scalar
import Normalize.ScalarCodecs
import Normalize.Union


buildCircularOne : (CircularOneOptionalFields -> CircularOneOptionalFields) -> CircularOne
buildCircularOne fillOptionals =
    let
        optionals =
            fillOptionals
                { circularTwo = Absent }
    in
    CircularOne { circularTwo = optionals.circularTwo }


type alias CircularOneOptionalFields =
    { circularTwo : OptionalArgument CircularTwo }


{-| Type alias for the `CircularOne` attributes. Note that this type
needs to use the `CircularOne` type (not just a plain type alias) because it has
references to itself either directly (recursive) or indirectly (circular). See
<https://github.com/dillonkearns/elm-graphql/issues/33>.
-}
type alias CircularOneRaw =
    { circularTwo : OptionalArgument CircularTwo }


{-| Type for the CircularOne input object.
-}
type CircularOne
    = CircularOne CircularOneRaw


{-| Encode a CircularOne into a value that can be used as an argument.
-}
encodeCircularOne : CircularOne -> Value
encodeCircularOne (CircularOne input) =
    Encode.maybeObject
        [ ( "circularTwo", encodeCircularTwo |> Encode.optional input.circularTwo ) ]


buildCircularTwo : (CircularTwoOptionalFields -> CircularTwoOptionalFields) -> CircularTwo
buildCircularTwo fillOptionals =
    let
        optionals =
            fillOptionals
                { circularOne = Absent }
    in
    CircularTwo { circularOne = optionals.circularOne }


type alias CircularTwoOptionalFields =
    { circularOne : OptionalArgument CircularOne }


{-| Type alias for the `CircularTwo` attributes. Note that this type
needs to use the `CircularTwo` type (not just a plain type alias) because it has
references to itself either directly (recursive) or indirectly (circular). See
<https://github.com/dillonkearns/elm-graphql/issues/33>.
-}
type alias CircularTwoRaw =
    { circularOne : OptionalArgument CircularOne }


{-| Type for the CircularTwo input object.
-}
type CircularTwo
    = CircularTwo CircularTwoRaw


{-| Encode a CircularTwo into a value that can be used as an argument.
-}
encodeCircularTwo : CircularTwo -> Value
encodeCircularTwo (CircularTwo input) =
    Encode.maybeObject
        [ ( "circularOne", encodeCircularOne |> Encode.optional input.circularOne ) ]


buildGreeting : GreetingRequiredFields -> (GreetingOptionalFields -> GreetingOptionalFields) -> Greeting
buildGreeting required fillOptionals =
    let
        optionals =
            fillOptionals
                { language = Absent, options = Absent }
    in
    { language = optionals.language, name = required.name, options = optionals.options }


type alias GreetingRequiredFields =
    { name : String }


type alias GreetingOptionalFields =
    { language : OptionalArgument Normalize.Enum.Language.Language
    , options : OptionalArgument GreetingOptions
    }


{-| Type for the Greeting input object.
-}
type alias Greeting =
    { language : OptionalArgument Normalize.Enum.Language.Language
    , name : String
    , options : OptionalArgument GreetingOptions
    }


{-| Encode a Greeting into a value that can be used as an argument.
-}
encodeGreeting : Greeting -> Value
encodeGreeting input =
    Encode.maybeObject
        [ ( "language", Encode.enum Normalize.Enum.Language.toString |> Encode.optional input.language ), ( "name", Encode.string input.name |> Just ), ( "options", encodeGreetingOptions |> Encode.optional input.options ) ]


buildGreetingOptions : (GreetingOptionsOptionalFields -> GreetingOptionsOptionalFields) -> GreetingOptions
buildGreetingOptions fillOptionals =
    let
        optionals =
            fillOptionals
                { prefix = Absent }
    in
    { prefix = optionals.prefix }


type alias GreetingOptionsOptionalFields =
    { prefix : OptionalArgument String }


{-| Type for the GreetingOptions input object.
-}
type alias GreetingOptions =
    { prefix : OptionalArgument String }


{-| Encode a GreetingOptions into a value that can be used as an argument.
-}
encodeGreetingOptions : GreetingOptions -> Value
encodeGreetingOptions input =
    Encode.maybeObject
        [ ( "prefix", Encode.string |> Encode.optional input.prefix ) ]


buildRecursive : (RecursiveOptionalFields -> RecursiveOptionalFields) -> Recursive
buildRecursive fillOptionals =
    let
        optionals =
            fillOptionals
                { recursive = Absent }
    in
    Recursive { recursive = optionals.recursive }


type alias RecursiveOptionalFields =
    { recursive : OptionalArgument Recursive }


{-| Type alias for the `Recursive` attributes. Note that this type
needs to use the `Recursive` type (not just a plain type alias) because it has
references to itself either directly (recursive) or indirectly (circular). See
<https://github.com/dillonkearns/elm-graphql/issues/33>.
-}
type alias RecursiveRaw =
    { recursive : OptionalArgument Recursive }


{-| Type for the Recursive input object.
-}
type Recursive
    = Recursive RecursiveRaw


{-| Encode a Recursive into a value that can be used as an argument.
-}
encodeRecursive : Recursive -> Value
encodeRecursive (Recursive input) =
    Encode.maybeObject
        [ ( "recursive", encodeRecursive |> Encode.optional input.recursive ) ]


buildReservedWord : ReservedWordRequiredFields -> ReservedWord
buildReservedWord required =
    { type_ = required.type_ }


type alias ReservedWordRequiredFields =
    { type_ : String }


{-| Type for the ReservedWord input object.
-}
type alias ReservedWord =
    { type_ : String }


{-| Encode a ReservedWord into a value that can be used as an argument.
-}
encodeReservedWord : ReservedWord -> Value
encodeReservedWord input =
    Encode.maybeObject
        [ ( "type", Encode.string input.type_ |> Just ) ]
