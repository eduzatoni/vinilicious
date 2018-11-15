//
//  ViewController.swift
//  ViniciusApp
//
//  Created by Eduardo Curupana on 07/11/2018.
//  Copyright © 2018 Eduardo Curupana. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {
    
    @IBOutlet weak var recipeImageView: UIImageView!
    
    var recipeArray: [Recipe] = []
    var recipe = Recipe()
    
    var data = DataBase()
    
    var containerVC: CollectionViewController?
    
    var firstAppear = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setRounded()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        if firstAppear == false{
            setRecipe()
            containerVC?.recipe = recipe
            containerVC?.ingredientSelectedArray = []
        }
        
        firstAppear = false
    }
    
    func setRecipe(){
        
        recipeArray = data.recipeArray
        
        let index = Int.random(in: 0 ... recipeArray.count - 1)
        
        recipe = recipeArray[index]
        
        print("-----------------------------")
        print("Set recipe: \(recipe.name)")
        print("Ingredient:")
        for ing in recipe.ingredientArray {
            print(ing.name)
        }
        print("-----------------------------")
        
        recipeImageView.image = recipe.image
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        setRecipe()
        
        if segue.identifier == "containerSegue"{
            print("containerSegue")
            containerVC = segue.destination as! CollectionViewController
            containerVC?.infoRecipeVC = self
            containerVC?.recipe = recipe
        }
    }
    
    func setRounded() {
        
        recipeImageView.layer.borderWidth = 1
        recipeImageView.layer.masksToBounds = false
        recipeImageView.layer.borderColor = UIColor.black.cgColor
        recipeImageView.layer.cornerRadius = recipeImageView.frame.height/2
        recipeImageView.clipsToBounds = true
    }

}
