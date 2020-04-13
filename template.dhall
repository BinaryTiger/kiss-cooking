let Recipe : Type = ./recipe-type.dhall
let Ingredient : Type = ./ingredient-type.dhall
let Macro : Type = ./macro-type.dhall
let Unit : Type = ./unit-type.dhall
let Step : Type = ./step-type.dhall

let Ingredients: List Ingredient =
        [ { name = ""
          , quantity = 1
          , unit = Some Unit.ML
          }
       ]

let Macros : Macro =
        { fat = 1
        , carbs = 1
        , proteins = 1
        , calories = 1
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
        { name = "{$name}"
        , ingredients = Ingredients
        , macros = Macros
        , notes = Notes
        , steps = Steps
        , tags = Tags
        }

in ${name}
