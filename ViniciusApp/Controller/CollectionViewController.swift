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
    
    var data = DataBase()
    
    var ingredientArray: [Ingredient] = []
    var ingredientSelectedArray: [Ingredient] = []
    var ingredientOptionArray: [Ingredient] = []
    var rightIngredientsSelected: [Ingredient] = []
    
    var recipe: Recipe = Recipe()
    var recipeArray: [Recipe] = []
    var count = 0
    
    var infoRecipeVC: RecipeViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.backgroundColor = UIColor.clear
        
        recipeArray = data.recipeArray
        ingredientArray = data.ingredientArray
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        collectionView.reloadData()
        count = 0
        setOptions()
    }
    
    func setOptions(){
        
        ingredientOptionArray = []
        print("---------------------------------")
        print("Add options for \(recipe.name)")
        for ing in recipe.ingredientArray {
            ing.selected = false
            ingredientOptionArray.append(ing)
            print(ing.name)
        }
        
        let ingredientNeeded = 9 - ingredientOptionArray.count
        
        var n = 0
        
        repeat{
            let randomIndex = Int.random(in: 0 ... ingredientArray.count - 1)
            
            let ingredient = ingredientArray[randomIndex]
            
            if ingredientOptionArray.contains(ingredient) == false{
                ingredientOptionArray.append(ingredient)
                print(ingredientArray[randomIndex].name)
                n = n + 1
            }
            
        }while n < ingredientNeeded
        print("----------------------")
        ingredientOptionArray.shuffle()
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedIngredient = ingredientOptionArray[indexPath.row]
        
        selectedIngredient.selected = !selectedIngredient.selected
        //print("\(selectedIngredient.name) \(selectedIngredient.selected)")
        
        
        
        updateIngredientsSelectedArray(selectedIngredient: selectedIngredient)
        
        checkIngredients(selectedIngredient: selectedIngredient)
        
        self.collectionView.reloadData()
    }
    
    func resetCollection(){
        for ing in ingredientOptionArray{
            ing.selected = false
        }
        ingredientSelectedArray = []
        rightIngredientsSelected = []
        //count = 0
        
    }
    
    func checkIngredients(selectedIngredient: Ingredient){
        
        if selectedIngredient.selected == true{
            if recipe.ingredientArray.contains(selectedIngredient){
                print("contain")
                rightIngredientsSelected.append(selectedIngredient)
                
                if rightIngredientsSelected.count == recipe.ingredientArray.count{
                    print("right!")
                    performSegue(withIdentifier: "informationSegue", sender: nil)
                    resetCollection()
                }else if rightIngredientsSelected.count > recipe.ingredientArray.count{
                    print("1.1")
                    shake(duration: 1)
                    resetCollection()
                }else if ingredientSelectedArray.count == recipe.ingredientArray.count{
                    print("1.2")
                    shake(duration: 1)
                    resetCollection()
                }else{
                    print("first else")
                }
                
            }else{
                print("dont contain")
                if ingredientSelectedArray.count == recipe.ingredientArray.count{
                    print("2.1")
                    shake(duration: 1)
                    resetCollection()
                }else if rightIngredientsSelected.count > recipe.ingredientArray.count{
                    print("2uk.2")
                    shake(duration: 1)
                    resetCollection()
                }else{
                    print("second else")
                }
            }
        }else{
            print("deselected")
        }
        
        
        /*
        if selectedIngredient.selected == true && recipe.ingredientArray.contains(selectedIngredient) == true{
            print("fist if")
            if ingredientSelectedArray.count < recipe.ingredientArray.count{
                
                print("add item \(selectedIngredient.name)")
                rightIngredientsSelected.append(selectedIngredient)
                if rightIngredientsSelected.count == recipe.ingredientArray.count{
                    performSegue(withIdentifier: "informationSegue", sender: nil)
                    resetCollection()
                }
            }else{
                shake(duration: 1)
                resetCollection()
            }
            
        }else if selectedIngredient.selected == false &&                recipe.ingredientArray.contains(selectedIngredient) == true{
            print("sencond if")
            rightIngredientsSelected.removeAll { (ing) -> Bool in
                ing.name == selectedIngredient.name
            }
            print("remove item \(selectedIngredient.name)")
            
        }else if selectedIngredient.selected == true && recipe.ingredientArray.contains(selectedIngredient) == false{
            print("third if")
            print("\(ingredientSelectedArray.count) \(recipe.ingredientArray.count)")
            if ingredientSelectedArray.count > recipe.ingredientArray.count{
                shakeImage()
                resetCollection()
            }
            
        }else{
            
            print("false false")
        }
        
        */
        
//        if recipe.ingredientArray.contains(selectedIngredient){
//            print("belong")
//            print("ingredientSelectedArray \(ingredientSelectedArray.count) recipe.ingredientArray \(recipe.ingredientArray.count)")
//            print(ingredientSelectedArray.count == recipe.ingredientArray.count)
//            if ingredientSelectedArray.count == recipe.ingredientArray.count{
//                if selectedIngredient.selected == true{
//                    count = count + 1
//                    if count == recipe.ingredientArray.count && ingredientSelectedArray.count == recipe.ingredientArray.count{
//                        //alert(title: "Well Done!", message: "You did it right! Now you can know a bit more about Vinicius")
//                        performSegue(withIdentifier: "informationSegue", sender: nil)
//                    }
//                }else{
//                    count = count - 1
//                }
//            }else{
//                if ingredientSelectedArray.count > recipe.ingredientArray.count{
//                    resetCollection()
//                }
//            }
//
//        }else{ //don't contais in thìe recipe array
//            print("dont belong")
//            if ingredientSelectedArray.count >= recipe.ingredientArray.count{
//                resetCollection()
//            }
//        }
        
        
        /*
        if ingredientSelectedArray.count > recipe.ingredientArray.count{
            //shakeImage()
            shake(duration: 1.0)
            for ing in ingredientOptionArray{
                ing.selected = false
            }
            ingredientSelectedArray = []
            count = 0
        }else if recipe.ingredientArray.contains(selectedIngredient){
            if selectedIngredient.selected == true{
                count = count + 1
                if count == recipe.ingredientArray.count && ingredientSelectedArray.count == recipe.ingredientArray.count{
                    //alert(title: "Well Done!", message: "You did it right! Now you can know a bit more about Vinicius")
                    performSegue(withIdentifier: "informationSegue", sender: nil)
                }
            }else{
                count = count - 1
            }
            
        }else{
            if count == recipe.ingredientArray.count && ingredientSelectedArray.count == recipe.ingredientArray.count{
                //alert(title: "Well Done!", message: "You did it right! Now you can know a bit more about Vinicius")
                
                performSegue(withIdentifier: "informationSegue", sender: nil)
            }
        }
 */
    }
    
    func updateIngredientsSelectedArray(selectedIngredient: Ingredient){
        if selectedIngredient.selected == true{
            addSelected(selectedIngredient: selectedIngredient)
        }else{
            removeSelected(selectedIngredient: selectedIngredient)
        }
    }
    
    func shakeImage(){
        //SHAKE
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: collectionView.center.x - 10, y: collectionView.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: collectionView.center.x + 10, y: collectionView.center.y))
        
        collectionView.layer.add(animation, forKey: "position")
        infoRecipeVC?.recipeImageView.layer.add(animation, forKey: "position")
        
        //VIBRATE
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
    func shake(duration: CFTimeInterval) {
        
        print("SHAKE")
        let translation = CAKeyframeAnimation(keyPath: "transform.translation.x");
        translation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        translation.values = [-5, 5, -5, 5, -3, 3, -2, 2, 0]
        
        let rotation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        rotation.values = [-5, 5, -5, 5, -3, 3, -2, 2, 0].map {
            ( degrees: Double) -> Double in
            let radians: Double = (.pi * degrees) / 180.0
            return radians
        }
        
        let shakeGroup: CAAnimationGroup = CAAnimationGroup()
        shakeGroup.animations = [translation, rotation]
        shakeGroup.duration = duration
        infoRecipeVC?.recipeImageView.layer.add(shakeGroup, forKey: "shakeIt")
        
        //VIBRATE
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
    func alert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ingredientOptionArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let ingredient = ingredientOptionArray[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! IngredientCollectionViewCell
        
        cell.imageView.image = ingredient.image
        cell.label.text = ingredient.name
        
//        cell.layer.cornerRadius = 20
//        cell.layer.masksToBounds = true
        
        //print("\(ingredient.name) \(ingredient.selected)")
        if ingredient.selected == true{
            cell.checkedImageView.isHidden = false
        }else{
            cell.checkedImageView.isHidden = true
        }
        
        return cell
    }
    
    func removeSelected(selectedIngredient: Ingredient) {
        ingredientSelectedArray = ingredientSelectedArray.filter() { $0 !== selectedIngredient }
    }
    
    func addSelected(selectedIngredient: Ingredient) {
        ingredientSelectedArray.append(selectedIngredient)
    }
    

}

extension Ingredient: Equatable {
    static func == (lhs: Ingredient, rhs: Ingredient) -> Bool {
        return lhs.name == rhs.name
    }
}


