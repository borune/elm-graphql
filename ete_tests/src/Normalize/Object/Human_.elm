-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Normalize.Object.Human_ exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import Normalize.Enum.Episode_
import Normalize.InputObject
import Normalize.Interface
import Normalize.Object
import Normalize.Scalar
import Normalize.ScalarCodecs
import Normalize.Union


{-| Which movies they appear in.
-}
appearsIn : SelectionSet (List Normalize.Enum.Episode_.Episode_) Normalize.Object.Human_
appearsIn =
    Object.selectionForField "(List Enum.Episode_.Episode_)" "appearsIn" [] (Normalize.Enum.Episode_.decoder |> Decode.list)


{-| The friends of the human, or an empty list if they have none.
-}
friends : SelectionSet decodesTo Normalize.Interface.Character -> SelectionSet (List decodesTo) Normalize.Object.Human_
friends object_ =
    Object.selectionForCompositeField "friends" [] object_ (identity >> Decode.list)


{-| The home planet of the human, or null if unknown.
-}
homePlanet : SelectionSet (Maybe String) Normalize.Object.Human_
homePlanet =
    Object.selectionForField "(Maybe String)" "homePlanet" [] (Decode.string |> Decode.nullable)


{-| The ID of the human.
-}
id : SelectionSet Normalize.ScalarCodecs.Id Normalize.Object.Human_
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Normalize.ScalarCodecs.codecs |> Normalize.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The name of the human.
-}
name : SelectionSet String Normalize.Object.Human_
name =
    Object.selectionForField "String" "name" [] Decode.string
