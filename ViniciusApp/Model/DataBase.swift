//
//  DataBase.swift
//  ViniciusApp
//
//  Created by Eduardo Curupana on 08/11/2018.
//  Copyright © 2018 Eduardo Curupana. All rights reserved.
//

import UIKit

class DataBase {
    
    var recipeArray = [Recipe]()
    var ingredientArray = [Ingredient]()
    var informationArray = [Information]()
    
    init() {
        setRecipes()
        setInformation()
    }
    
    func setInformation(){
        
        let info1 = Information()
        info1.info = "Vinicius studied biology because he wanted to change the world!"
        info1.image = UIImage(named: "earth")!
        
        let info2 = Information()
        info2.info = "Vinicius' favorite book is One Hundred Years of Solitude wrote by Colombian author Gabriel García Márquez. This book won the Nobel Prize in 1982."
        info2.image = UIImage(named: "book")!
        
        let info3 = Information()
        info3.info = "Vinicius has been married with Rafaela since January. They met at the university. It's a true love story!"
        info3.image = UIImage(named: "couple")!
        
        let info4 = Information()
        info4.info = "Vinicius is from a city called Cariacia in Espirito Santo, Brazil."
        info4.image = UIImage(named: "city")!
        
        let info5 = Information()
        info5.info = "Vinicius worked in the gym where he was partner with his mother in Cariacica for 3 years."
        info5.image = UIImage(named: "work")!
        
        let info6 = Information()
        info6.info = "Vinicius likes to read and watch series in his time off. His favorite series is Breaking Bad."
        info6.image = UIImage(named: "serie")!
        
        informationArray.append(info1)
        informationArray.append(info2)
        informationArray.append(info3)
        informationArray.append(info4)
        informationArray.append(info5)
        informationArray.append(info6)
        
    }
    
    func setRecipes() {
        
//      INGREDIENTS
        
        let apple = Ingredient()
        apple.name = "Apple"
        apple.image = UIImage(named: "apple")!
        ingredientArray.append(apple)
        
        let apricot = Ingredient()
        apricot.name = "Apricot"
        apricot.image = UIImage(named: "apricot")!
        ingredientArray.append(apricot)
        
        let avocado = Ingredient()
        avocado.name = "Avocado"
        avocado.image = UIImage(named: "avocado")!
        ingredientArray.append(avocado)
        
        let bacon = Ingredient()
        bacon.name = "Bacon"
        bacon.image = UIImage(named: "bacon")!
        ingredientArray.append(bacon)
        
        let banana = Ingredient()
        banana.name = "Banana"
        banana.image = UIImage(named: "banana")!
        ingredientArray.append(banana)
        
        let beet = Ingredient()
        beet.name = "Beet"
        beet.image = UIImage(named: "beet")!
        ingredientArray.append(beet)
        
        let berry = Ingredient()
        berry.name = "Berry"
        berry.image = UIImage(named: "berry")!
        ingredientArray.append(berry)
        
        let carrot = Ingredient()
        carrot.name = "Carrot"
        carrot.image = UIImage(named: "carrot")!
        ingredientArray.append(carrot)
        
        let cauliflower = Ingredient()
        cauliflower.name = "Cauliflower"
        cauliflower.image = UIImage(named: "cauliflower")!
        ingredientArray.append(cauliflower)
        
        let cereal = Ingredient()
        cereal.name = "Cereal"
        cereal.image = UIImage(named: "cereal")!
        ingredientArray.append(cereal)
        
        let chicken = Ingredient()
        chicken.name = "Chicken"
        chicken.image = UIImage(named: "chicken")!
        ingredientArray.append(chicken)
        
        let coconut = Ingredient()
        coconut.name = "Coconut"
        coconut.image = UIImage(named: "coconut")!
        ingredientArray.append(coconut)
        
        let cucumber = Ingredient()
        cucumber.name = "Cucumber"
        cucumber.image = UIImage(named: "cucumber")!
        ingredientArray.append(cucumber)
        
        let eggplant = Ingredient()
        eggplant.name = "Eggplant"
        eggplant.image = UIImage(named: "eggplant")!
        ingredientArray.append(eggplant)
        
        let fish = Ingredient()
        fish.name = "Fish"
        fish.image = UIImage(named: "fish")!
        ingredientArray.append(fish)
        
        let grape = Ingredient()
        grape.name = "Grape"
        grape.image = UIImage(named: "grape")!
        ingredientArray.append(grape)
        
        let kiwi = Ingredient()
        kiwi.name = "Kiwi"
        kiwi.image = UIImage(named: "kiwi")!
        ingredientArray.append(kiwi)
        
        let lettuce = Ingredient()
        lettuce.name = "Lettuce"
        lettuce.image = UIImage(named: "lettuce")!
        ingredientArray.append(lettuce)
        
        let meat = Ingredient()
        meat.name = "Meat"
        meat.image = UIImage(named: "meat")!
        ingredientArray.append(meat)
        
        let olive = Ingredient()
        olive.name = "Olive"
        olive.image = UIImage(named: "olive")!
        ingredientArray.append(olive)
        
        let onion = Ingredient()
        onion.name = "Onion"
        onion.image = UIImage(named: "onion")!
        ingredientArray.append(onion)
        
        let orange = Ingredient()
        orange.name = "Orange"
        orange.image = UIImage(named: "orange")!
        ingredientArray.append(orange)
        
        let papaya = Ingredient()
        papaya.name = "Papaya"
        papaya.image = UIImage(named: "papaya")!
        ingredientArray.append(papaya)
        
        let sausage = Ingredient()
        sausage.name = "Sausage"
        sausage.image = UIImage(named: "sausage")!
        ingredientArray.append(sausage)
        
        let shrimp = Ingredient()
        shrimp.name = "Shrimp"
        shrimp.image = UIImage(named: "shrimp")!
        ingredientArray.append(shrimp)
        
        let spinach = Ingredient()
        spinach.name = "Spinach"
        spinach.image = UIImage(named: "spinach")!
        ingredientArray.append(spinach)
        
        let strawberry = Ingredient()
        strawberry.name = "Strawberry"
        strawberry.image = UIImage(named: "strawberry")!
        ingredientArray.append(strawberry)
        
        let tomato = Ingredient()
        tomato.name = "Tomato"
        tomato.image = UIImage(named: "tomato")!
        ingredientArray.append(tomato)
        
        let watermelon = Ingredient()
        watermelon.name = "Watermelon"
        watermelon.image = UIImage(named: "watermelon")!
        ingredientArray.append(watermelon)
        
        let zucchini = Ingredient()
        zucchini.name = "Zucchini"
        zucchini.image = UIImage(named: "zucchini")!
        ingredientArray.append(zucchini)
        
        let wine = Ingredient()
        wine.name = "Wine"
        wine.image = UIImage(named: "wine")!
        ingredientArray.append(wine)
        
        let pork = Ingredient()
        pork.name = "Pork"
        pork.image = UIImage(named: "pork")!
        ingredientArray.append(pork)
        
        let mushroom = Ingredient()
        mushroom.name = "Mushroom"
        mushroom.image = UIImage(named: "mushroom")!
        ingredientArray.append(mushroom)
        
        let pepper = Ingredient()
        pepper.name = "Pepper"
        pepper.image = UIImage(named: "pepper")!
        ingredientArray.append(pepper)
        
        let broccoli = Ingredient()
        broccoli.name = "Broccoli"
        broccoli.image = UIImage(named: "broccoli")!
        ingredientArray.append(broccoli)
        
        
        
//      RECIPES
        
        let recipe1 = Recipe()
        recipe1.name = "recipe1"
        recipe1.image = UIImage(named: "recipe1")!
        recipe1.ingredientArray = [strawberry, kiwi, apricot, berry]
        
        let recipe2 = Recipe()
        recipe2.name = "recipe2"
        recipe2.image = UIImage(named: "recipe2")!
        recipe2.ingredientArray = [carrot, meat, spinach]
        
        let recipe3 = Recipe()
        recipe3.name = "recipe3"
        recipe3.image = UIImage(named: "recipe3")!
        recipe3.ingredientArray = [cereal, banana, strawberry, papaya]
        
        let recipe4 = Recipe()
        recipe4.name = "recipe4"
        recipe4.image = UIImage(named: "recipe4")!
        recipe4.ingredientArray = [lettuce, fish]
        
        let recipe5 = Recipe()
        recipe5.name = "recipe5"
        recipe5.image = UIImage(named: "recipe5")!
        recipe5.ingredientArray = [zucchini, meat, tomato]
        
        let recipe6 = Recipe()
        recipe6.name = "recipe6"
        recipe6.image = UIImage(named: "recipe6")!
        recipe6.ingredientArray = [fish, broccoli, mushroom]
        
        let recipe7 = Recipe()
        recipe7.name = "recipe7"
        recipe7.image = UIImage(named: "recipe7")!
        recipe7.ingredientArray = [tomato, cucumber, lettuce]
        
        let recipe8 = Recipe()
        recipe8.name = "recipe8"
        recipe8.image = UIImage(named: "recipe8")!
        recipe8.ingredientArray = [wine, pork, mushroom]
        
        let recipe9 = Recipe()
        recipe9.name = "recipe9"
        recipe9.image = UIImage(named: "recipe9")!
        recipe9.ingredientArray = [onion, pepper, chicken]
        
        let recipe10 = Recipe()
        recipe10.name = "recipe10"
        recipe10.image = UIImage(named: "recipe10")!
        recipe10.ingredientArray = [lettuce, pork, cucumber]
        
        recipeArray.append(recipe1)
        recipeArray.append(recipe2)
        recipeArray.append(recipe3)
        recipeArray.append(recipe4)
        recipeArray.append(recipe5)
        recipeArray.append(recipe6)
        recipeArray.append(recipe7)
        recipeArray.append(recipe8)
        recipeArray.append(recipe9)
        recipeArray.append(recipe10)
        
    }
    
}
