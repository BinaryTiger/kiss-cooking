let Recipe : Type = ./recipe-type.dhall
let Ingredient : Type = ./ingredient-type.dhall
let Macro : Type = ./macro-type.dhall
let Unit : Type = ./unit-type.dhall
let Step : Type = ./step-type.dhall

let Ingredients: List Ingredient =
        [ { name = "flour"
          , quantity = 250
          , unit = Some Unit.ML
          }
        , { name = "salt"
          , quantity = 2
          , unit = Some Unit.ML
          }
        , { name = "sugar"
          , quantity = 60
          , unit = Some Unit.ML
          }
        , { name = "milk"
          , quantity = 330
          , unit = Some Unit.ML
          }
        , { name = "egg"
          , quantity = 2
          , unit = None Unit
          }
        , { name = "vanilla essence"
          , quantity = 10
          , unit = Some Unit.ML
          }
        , { name = "butter"
          , quantity = 30
          , unit = Some Unit.ML
          }
        ]

let Macros : Macro =
        { fat = 100
        , carbs = 50
        , proteins = 66
        , calories = 700
        }

let Notes : List Text =
        [ "Citrus Waffles: Add 30 ML of zest to the mix"
        , "Chocolate Waffles: Replace 60 ML of flour by 125 ML of cacao"
        ]

let Steps : List Step =
        [ { ordinal = 1
          , description = "Sieve the flour in a bowl"
          }
        , { ordinal = 2
          , description = "Dilute the salt and sugar in milk. Incorporate the battered egg. Add vanilla essence"
          }
        , { ordinal = 3
          , description = "Pour and whisk the liquid mix into the reserved flour"
          }
        , { ordinal = 4
          , description = "Add the melted butter and put in the fridge for 1H"
          }
        ]

let Waffles : Recipe =
        { name = "Waffles"
        , ingredients = Ingredients
        , macros = Macros
        , notes = Notes
        , steps = Steps
        }

in Waffles
