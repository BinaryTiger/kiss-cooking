let Recipe
    : Type
    = ./types/recipe-type.dhall

let Ingredient
    : Type
    = ./types/ingredient-type.dhall

let Macro
    : Type
    = ./types/macro-type.dhall

let Unit
    : Type
    = ./types/unit-type.dhall

let Step
    : Type
    = ./types/step-type.dhall

let Ingredients: List Ingredient =
        [ { name = ""
          , quantity = 1
          , unit = Some Unit.ML
          }
       ]

let Macros : Macro =
        { fat = 0
        , carbs = 0
        , proteins = 0
        , calories = 0
        }

let Notes : List Text = [] : List Text

let Steps : List Step =
        [ { ordinal = 1
          , description = ""
          }
        , { ordinal = 2
          , description = ""
          }
        , { ordinal = 3
          , description = ""
          }
        , { ordinal = 4
          , description = ""
          }
        ]

let Tags : List Text = [] : List Text

let ${name} : Recipe =
        { name = "${name}"
        , ingredients = Ingredients
        , macros = Macros
        , notes = Notes
        , steps = Steps
        , tags = Tags
        }

in ${name}
