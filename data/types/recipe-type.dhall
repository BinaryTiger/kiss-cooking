let Ingredient = ./ingredient-type.dhall
let Macro = ./macro-type.dhall
let Step = ./step-type.dhall

let Recipe : Type =
        { name : Text
        , ingredients : List Ingredient
        , macros: Macro
        , notes: List Text
        , steps: List Step
        }

in Recipe
