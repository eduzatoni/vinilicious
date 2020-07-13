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
    @IBOutlet weak var collectionView: UICollectionView!
    
    var ingredientOptions: [Ingredient] = []
    var recipe: Recipe!
    
    let infoSegueID = "infoSegueID"
    let ingredientCellID = "ingredientCellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeImageView.setRounded(cornerRadius: recipeImageView.frame.height/2)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setRecipe()
        setOptions()
    }
    
    func setRecipe() {
        recipe = DataSource().getRandomRecipe()
        print("-------- Set \(recipe.name) --------")
        recipe.printIngredientNames()
        
        recipeImageView.image = recipe.image
    }
    
    private func setOptions() {
        ingredientOptions = DataSource().createRandomIngredientsCollection(ingredients: recipe.ingredients)
        collectionView.reloadData()
        printOptions(ingredients: ingredientOptions)
    }
    
    private func printOptions(ingredients: [Ingredient]) {
        print("------ Add options ------")
        for ingredient in ingredients {
            if recipe.ingredients.contains(ingredient) {
                print("> \(ingredient.name.uppercased())")
            } else {
                print("- \(ingredient.name)")
            }
        }
    }
    
    private func resetCollection() {
        for (index, ing) in ingredientOptions.enumerated() {
            var ingredient = ing
            ingredient.selected = false
            ingredientOptions.remove(at: index)
            ingredientOptions.insert(ingredient, at: index)
        }
    }
    
    private func rightGuess() {
        performSegue(withIdentifier: infoSegueID, sender: nil)
    }
    
    private func wrongGuess() {
        recipeImageView.shake(duration: 1)
    }
    
    private func checkIngredients(selectedIngredient: Ingredient) {
        if selectedIngredient.selected == true {
            var selectIngredients = ingredientOptions.filter( { $0.selected } )
            
            if selectIngredients.count == recipe.numberOfIngredients {
                if recipe.areRightIngredients(selectIngredients) {
                    rightGuess()
                } else {
                    wrongGuess()
                }
                resetCollection()
                selectIngredients = []
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == infoSegueID {
            let nextVC = segue.destination as? InformationViewController
            nextVC?.delegate = self
        }
    }
}

extension RecipeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ingredientOptions.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ingredientCellID, for: indexPath) as! IngredientCollectionViewCell
        let ingredient = ingredientOptions[indexPath.row]
        cell.configCell(ingredient: ingredient)
        return cell
    }
}

extension RecipeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var selectedIngredient = ingredientOptions[indexPath.row]
        ingredientOptions.remove(at: indexPath.row)
        selectedIngredient.selected = !selectedIngredient.selected
        ingredientOptions.insert(selectedIngredient, at: indexPath.row)
        
        checkIngredients(selectedIngredient: selectedIngredient)
        self.collectionView.reloadData()
    }
}


extension RecipeViewController: RecipeDelegate {
    func didPressNewRecipe() {
        setRecipe()
        setOptions()
    }
}

protocol RecipeDelegate {
    func didPressNewRecipe()
}
