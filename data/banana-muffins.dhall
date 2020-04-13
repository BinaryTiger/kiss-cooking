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

let Ingredients
    : List Ingredient
    = [ { name = "butter", quantity = 125, unit = Some Unit.g }
      , { name = "sugar", quantity = 220, unit = Some Unit.g }
      , { name = "egg", quantity = 2, unit = None Unit }
      , { name = "ripe banana", quantity = 3, unit = None Unit }
      , { name = "flour", quantity = 260, unit = Some Unit.g }
      , { name = "baking soda", quantity = 5, unit = Some Unit.ml }
      , { name = "salt", quantity = 3, unit = Some Unit.ml }
      ]

let Macros
    : Macro
    = { fat = 0, carbs = 0, proteins = 0, calories = 0 }

let Notes
    : List Text
    = [ "Banana Bread: Bake for 55 minutes"
      , "Banana and nuts: Add wallnuts to the mix"
      ]

let Steps
    : List Step
    = [ { ordinal = 1, description = "Preheat the oven to 175C (350F)" }
      , { ordinal = 2
        , description =
            "Whisk the room temperatur butter in the sugar until whitened"
        }
      , { ordinal = 3
        , description = "Add the eggs, bananas, flour, baking soda and salt"
        }
      , { ordinal = 4
        , description = "Whisk until every ingredient is incorporated"
        }
      , { ordinal = 5, description = "Bake 25 to 30 minutes in a muffin pan" }
      ]

let Tags
    : List Text
    = [ "baking" ]

let BananaMuffins
    : Recipe
    = { name = "Banana Muffins"
      , ingredients = Ingredients
      , macros = Macros
      , notes = Notes
      , steps = Steps
      , tags = Tags
      }

in  BananaMuffins
