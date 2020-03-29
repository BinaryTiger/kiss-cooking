let Unit : Type = ./unit-type.dhall

let Ingredient : Type =
        { name : Text
        , quantity: Natural
        , unit: Optional Unit
        }

in Ingredient
