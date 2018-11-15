//
//  PopUpViewController.swift
//  ViniciusApp
//
//  Created by Eduardo Curupana on 15/11/2018.
//  Copyright © 2018 Eduardo Curupana. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var data = DataBase()
    
    var informationArray: [Information] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setRoundButton()
        setInformation()
        setRounded()
        
    }
    
    func setRoundButton(){
        nextButton.layer.cornerRadius = 35
        nextButton.layer.masksToBounds = true
    }
    
    func setRounded() {
        
        imageView.layer.masksToBounds = false
        imageView.layer.cornerRadius = imageView.frame.height/2
        imageView.clipsToBounds = true
    }
    
    func setInformation(){
        informationArray = data.informationArray
        
        let index = Int.random(in: 0 ... informationArray.count - 1)
        
        let information = informationArray[index]
        imageView.image = information.image
        infoLabel.text = information.info
    }
    
    
    
    @IBAction func NextButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
