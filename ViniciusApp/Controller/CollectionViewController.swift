//
//  ViewController.swift
//  ViniciusApp
//
//  Created by Eduardo Curupana on 06/11/2018.
//  Copyright © 2018 Eduardo Curupana. All rights reserved.
//

import UIKit
import AudioToolbox

class CollectionViewController: UICollectionViewController {
    var ingredientOptions: [Ingredient] = []
    var recipe: Recipe!
    var infoRecipeVC: RecipeViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor.clear
    }
    
    override func viewWillAppear(_ animated: Bool) {
        collectionView.reloadData()
        setOptions()
    }
    
    private func setOptions() {
        ingredientOptions = DataSource().createRandomIngredientsCollection(ingredients: recipe.ingredients)
        printOptions(ingredients: ingredientOptions)
    }
    
    private func printOptions(ingredients: [Ingredient]) {
        print("Add options for \(recipe.name)")
        for ingredient in ingredients {
            print(ingredient.name)
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
        performSegue(withIdentifier: "informationSegue", sender: nil)
    }
    
    private func wrongGuess() {
        infoRecipeVC.recipeImageView.shake(duration: 1)
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
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var selectedIngredient = ingredientOptions[indexPath.row]
        ingredientOptions.remove(at: indexPath.row)
        selectedIngredient.selected = !selectedIngredient.selected
        ingredientOptions.insert(selectedIngredient, at: indexPath.row)
        
        checkIngredients(selectedIngredient: selectedIngredient)
        self.collectionView.reloadData()
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ingredientOptions.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! IngredientCollectionViewCell
        let ingredient = ingredientOptions[indexPath.row]
        cell.configCell(ingredient: ingredient)
        return cell
    }
}
