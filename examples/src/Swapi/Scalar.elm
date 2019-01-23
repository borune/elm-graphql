-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Swapi.Scalar exposing (Decoders, Id(..), PosixTime(..), defaultDecoders, defineDecoders, unwrapDecoders)

import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Json.Decode as Decode exposing (Decoder)


type Id
    = Id String


type PosixTime
    = PosixTime String


defineDecoders :
    { codecId : Codec valueId
    , codecPosixTime : Codec valuePosixTime
    }
    -> Decoders valueId valuePosixTime
defineDecoders definitions =
    Decoders
        { codecId = definitions.codecId
        , codecPosixTime = definitions.codecPosixTime
        }


unwrapDecoders :
    Decoders valueId valuePosixTime
    ->
        { codecId : Codec valueId
        , codecPosixTime : Codec valuePosixTime
        }
unwrapDecoders (Decoders unwrappedDecoders) =
    unwrappedDecoders


type Decoders valueId valuePosixTime
    = Decoders (RawDecoders valueId valuePosixTime)


type alias RawDecoders valueId valuePosixTime =
    { codecId : Codec valueId
    , codecPosixTime : Codec valuePosixTime
    }


type alias Codec elmValue =
    { encoder : elmValue -> Value
    , decoder : Decoder elmValue
    }


defaultDecoders : RawDecoders Id PosixTime
defaultDecoders =
    { codecId = Codec (\(Id rawId) -> Encode.string rawId) (Object.scalarDecoder |> Decode.map Id)
    , codecPosixTime = Codec (\(PosixTime rawId) -> Encode.string rawId) (Object.scalarDecoder |> Decode.map PosixTime)
    }
