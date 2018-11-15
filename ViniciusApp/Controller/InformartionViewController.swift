//
//  InformartionViewController.swift
//  ViniciusApp
//
//  Created by Eduardo Curupana on 07/11/2018.
//  Copyright © 2018 Eduardo Curupana. All rights reserved.
//

import UIKit

class InformartionViewController: UIViewController {
    
    @IBOutlet weak var infoImageView: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var data = DataBase()
    
    var informationArray: [Information] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        setRoundButton()
        setInformation()
        setRounded()
        
    }
    
    func setRoundButton(){
        button.layer.cornerRadius = 35
        button.layer.masksToBounds = true
    }
    
    func setRounded() {
        
        infoImageView.layer.masksToBounds = false
        infoImageView.layer.cornerRadius = infoImageView.frame.height/2
        infoImageView.clipsToBounds = true
    }
    
    func setInformation(){
        informationArray = data.informationArray
        
        let index = Int.random(in: 0 ... informationArray.count - 1)
        
        let information = informationArray[index]
        infoImageView.image = information.image
        infoLabel.text = information.info
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
