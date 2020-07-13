//
//  Recipe.swift
//  ViniciusApp
//
//  Created by Eduardo Curupana on 07/11/2018.
//  Copyright © 2018 Eduardo Curupana. All rights reserved.
//

import UIKit

struct Recipe {
    var name: String
    var image: UIImage
    var ingredients: [Ingredient]
    var numberOfIngredients: Int {
        return ingredients.count
    }
    
    func has(_ ingredient: Ingredient) -> Bool {
        return ingredients.contains(ingredient)
    }
    
    func printIngredientNames() {
        print("Ingredients --------")
        for ingredient in ingredients {
            print(ingredient.name)
        }
    }
    
    func areRightIngredients(_ ingredients: [Ingredient]) -> Bool {
        return ingredients.sorted() == ingredients.sorted()
    }
}
