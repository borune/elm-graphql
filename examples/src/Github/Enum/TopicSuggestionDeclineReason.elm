-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.TopicSuggestionDeclineReason exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Reason that the suggested topic is declined.

  - NotRelevant - The suggested topic is not relevant to the repository.
  - TooSpecific - The suggested topic is too specific for the repository (e.g. #ruby-on-rails-version-4-2-1).
  - PersonalPreference - The viewer does not like the suggested topic.
  - TooGeneral - The suggested topic is too general for the repository.

-}
type TopicSuggestionDeclineReason
    = NotRelevant
    | TooSpecific
    | PersonalPreference
    | TooGeneral


list : List TopicSuggestionDeclineReason
list =
    [ NotRelevant, TooSpecific, PersonalPreference, TooGeneral ]


decoder : Decoder TopicSuggestionDeclineReason
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "NOT_RELEVANT" ->
                        Decode.succeed NotRelevant

                    "TOO_SPECIFIC" ->
                        Decode.succeed TooSpecific

                    "PERSONAL_PREFERENCE" ->
                        Decode.succeed PersonalPreference

                    "TOO_GENERAL" ->
                        Decode.succeed TooGeneral

                    _ ->
                        Decode.fail ("Invalid TopicSuggestionDeclineReason type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : TopicSuggestionDeclineReason -> String
toString enum =
    case enum of
        NotRelevant ->
            "NOT_RELEVANT"

        TooSpecific ->
            "TOO_SPECIFIC"

        PersonalPreference ->
            "PERSONAL_PREFERENCE"

        TooGeneral ->
            "TOO_GENERAL"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe TopicSuggestionDeclineReason
fromString enumString =
    case enumString of
        "NOT_RELEVANT" ->
            Just NotRelevant

        "TOO_SPECIFIC" ->
            Just TooSpecific

        "PERSONAL_PREFERENCE" ->
            Just PersonalPreference

        "TOO_GENERAL" ->
            Just TooGeneral

        _ ->
            Nothing
