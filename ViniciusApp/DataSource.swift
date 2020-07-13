//
//  DataBase.swift
//  ViniciusApp
//
//  Created by Eduardo Curupana on 08/11/2018.
//  Copyright © 2018 Eduardo Curupana. All rights reserved.
//

import UIKit

class DataSource {
    var recipeArray = [Recipe]()
    var ingredientArray = [Ingredient]()
    var informationArray = [Information]()
    
    init() {
        setRecipes()
        setInformation()
    }
    
    func setInformation() {
        
        let info1 = Information(text: "Vinicius studied biology because he wanted to change the world!", image: UIImage(named: "earth")!)
        
        let info2 = Information(text: "Vinicius' favorite book is One Hundred Years of Solitude wrote by Colombian author Gabriel García Márquez. This book won the Nobel Prize in 1982.", image: UIImage(named: "book")!)
        
        let info3 = Information(text: "Vinicius has been married with Rafaela since January. They met at the university. It's a true love story!", image: UIImage(named: "couple")!)
        
        let info4 = Information(text: "Vinicius is from a city called Cariacia in Espirito Santo, Brazil.", image: UIImage(named: "city")!)
        
        let info5 = Information(text: "Vinicius worked in the gym where he was partner with his mother in Cariacica for 3 years.", image: UIImage(named: "work")!)
        
        let info6 = Information(text: "Vinicius likes to read and watch series in his time off. His favorite series is Breaking Bad.", image: UIImage(named: "serie")!)
        
        informationArray = [info1, info2, info3, info4, info5, info6]
    }
    
    func setRecipes() {
        //MARK: - Ingredients
        let apple = Ingredient(name: "Apple", image: UIImage(named: "apple")!)
        ingredientArray.append(apple)
        
        let apricot = Ingredient(name: "Apricot", image: UIImage(named: "apricot")!)
        ingredientArray.append(apricot)
        
        let avocado = Ingredient(name: "Avocado", image: UIImage(named: "avocado")!)
        ingredientArray.append(avocado)
        
        let bacon = Ingredient(name: "Bacon", image: UIImage(named: "bacon")!)
        ingredientArray.append(bacon)
        
        let banana = Ingredient(name: "Banana", image: UIImage(named: "banana")!)
        ingredientArray.append(banana)
        
        let beet = Ingredient(name: "Beet", image: UIImage(named: "beet")!)
        ingredientArray.append(beet)
        
        let berry = Ingredient(name: "Berry", image: UIImage(named: "berry")!)
        ingredientArray.append(berry)
        
        let carrot = Ingredient(name: "Carrot", image: UIImage(named: "carrot")!)
        ingredientArray.append(carrot)
        
        let cauliflower = Ingredient(name: "Cauliflower", image: UIImage(named: "cauliflower")!)
        ingredientArray.append(cauliflower)
        
        let cereal = Ingredient(name: "Cereal", image: UIImage(named: "cereal")!)
        ingredientArray.append(cereal)
        
        let chicken = Ingredient(name: "Chicken", image: UIImage(named: "chicken")!)
        ingredientArray.append(chicken)
        
        let coconut = Ingredient(name: "Coconut", image: UIImage(named: "coconut")!)
        ingredientArray.append(coconut)
        
        let cucumber = Ingredient(name: "Cucumber", image: UIImage(named: "cucumber")!)
        ingredientArray.append(cucumber)
        
        let eggplant = Ingredient(name: "Eggplant", image: UIImage(named: "eggplant")!)
        ingredientArray.append(eggplant)
        
        let fish = Ingredient(name: "Fish", image: UIImage(named: "fish")!)
        ingredientArray.append(fish)
        
        let grape = Ingredient(name: "Grape", image: UIImage(named: "grape")!)
        ingredientArray.append(grape)
        
        let kiwi = Ingredient(name: "Kiwi", image: UIImage(named: "kiwi")!)
        ingredientArray.append(kiwi)
        
        let lettuce = Ingredient(name: "Lettuce", image: UIImage(named: "lettuce")!)
        ingredientArray.append(lettuce)
        
        let meat = Ingredient(name: "Meat", image: UIImage(named: "meat")!)
        ingredientArray.append(meat)
        
        let olive = Ingredient(name: "Olive", image: UIImage(named: "olive")!)
        ingredientArray.append(olive)
        
        let onion = Ingredient(name: "Onion", image: UIImage(named: "onion")!)
        ingredientArray.append(onion)
        
        let orange = Ingredient(name: "Orange", image: UIImage(named: "orange")!)
        ingredientArray.append(orange)
        
        let papaya = Ingredient(name: "Papaya", image: UIImage(named: "papaya")!)
        ingredientArray.append(papaya)
        
        let sausage = Ingredient(name: "Sausage", image: UIImage(named: "sausage")!)
        ingredientArray.append(sausage)
        
        let shrimp = Ingredient(name: "Shrimp", image: UIImage(named: "shrimp")!)
        ingredientArray.append(shrimp)
        
        let spinach = Ingredient(name: "Spinach", image: UIImage(named: "spinach")!)
        ingredientArray.append(spinach)
        
        let strawberry = Ingredient(name: "Strawberry", image: UIImage(named: "strawberry")!)
        ingredientArray.append(strawberry)
        
        let tomato = Ingredient(name: "Tomato", image: UIImage(named: "tomato")!)
        ingredientArray.append(tomato)
        
        let watermelon = Ingredient(name: "Watermelon", image: UIImage(named: "watermelon")!)
        ingredientArray.append(watermelon)
        
        let zucchini = Ingredient(name: "Zucchini", image: UIImage(named: "zucchini")!)
        ingredientArray.append(zucchini)
        
        let wine = Ingredient(name: "Wine", image: UIImage(named: "wine")!)
        ingredientArray.append(wine)
        
        let pork = Ingredient(name: "Pork", image: UIImage(named: "pork")!)
        ingredientArray.append(pork)
        
        let mushroom = Ingredient(name: "Mushroom", image: UIImage(named: "mushroom")!)
        ingredientArray.append(mushroom)
        
        let pepper = Ingredient(name: "Pepper", image: UIImage(named: "pepper")!)
        ingredientArray.append(pepper)
        
        let broccoli = Ingredient(name: "Broccoli", image: UIImage(named: "broccoli")!)
        ingredientArray.append(broccoli)
        
        //MARK: - Recipes
        let recipe1 = Recipe(name: "recipe1", image: UIImage(named: "recipe1")!, ingredients: [strawberry, kiwi, apricot, berry])
        
        let recipe2 = Recipe(name: "recipe2", image: UIImage(named: "recipe2")!, ingredients: [carrot, meat, spinach])
        
        let recipe3 = Recipe(name: "recipe3", image: UIImage(named: "recipe3")!, ingredients: [cereal, banana, strawberry, papaya])
        
        let recipe4 = Recipe(name: "recipe4", image: UIImage(named: "recipe4")!, ingredients: [lettuce, fish])
        
        let recipe5 = Recipe(name: "recipe5", image: UIImage(named: "recipe5")!, ingredients: [zucchini, meat, tomato])
        
        let recipe6 = Recipe(name: "recipe6", image: UIImage(named: "recipe6")!, ingredients: [fish, broccoli, mushroom])
        
        let recipe7 = Recipe(name: "recipe7", image: UIImage(named: "recipe7")!, ingredients: [tomato, cucumber, lettuce])
        
        let recipe8 = Recipe(name: "recipe8", image: UIImage(named: "recipe8")!, ingredients: [wine, pork, mushroom])
        
        let recipe9 = Recipe(name: "recipe9", image: UIImage(named: "recipe9")!, ingredients: [onion, pepper, chicken])
        
        let recipe10 = Recipe(name: "recipe10", image: UIImage(named: "recipe10")!, ingredients: [lettuce, pork, cucumber])
        
        recipeArray = [recipe1, recipe2, recipe3, recipe4, recipe5, recipe6, recipe7, recipe8, recipe9, recipe10]
    }
    
    func getRandomRecipe() -> Recipe {
        let randomIndex = getRamdomNumber(from: 0, to: recipeArray.count - 1)
        let recipe = recipeArray[randomIndex]
        return recipe
    }
    
    func getRandomInfo() -> Information {
        let radomIndex = getRamdomNumber(from: 0, to: informationArray.count - 1)
        let info = informationArray[radomIndex]
        return info
    }
    
    func createRandomIngredientsCollection(ingredients: [Ingredient]) -> [Ingredient] {
        var ingredientOptions = ingredients
        
        ingredientArray.removeAll { (ingredient) -> Bool in
            ingredientOptions.contains(ingredient)
        }
        
        ingredientOptions = ingredientOptions + ingredientArray
        ingredientOptions = Array(ingredientOptions.prefix(9))
        ingredientOptions.shuffle()
        return ingredientOptions
    }
    
    func getRamdomNumber(from: Int, to: Int) -> Int {
        return Int.random(in: from ... to)
    }
    
}
