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
    var recipe: Recipe!
    var containerVC: CollectionViewController!
    
    let containerSegueID = "containerSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeImageView.setRounded(cornerRadius: recipeImageView.frame.height/2)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setRecipe()
        containerVC.recipe = recipe
    }
    
    func setRecipe() {
        recipe = DataSource().getRandomRecipe()
        print("Set recipe \(recipe.name) --------")
        recipe.printIngredientNames()
        
        recipeImageView.image = recipe.image
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == containerSegueID {
            containerVC = segue.destination as? CollectionViewController
            containerVC.infoRecipeVC = self
            containerVC.recipe = recipe
        }
    }
}
