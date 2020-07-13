//
//  InformartionViewController.swift
//  ViniciusApp
//
//  Created by Eduardo Curupana on 07/11/2018.
//  Copyright © 2018 Eduardo Curupana. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {
    
    @IBOutlet weak var infoImageView: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var delegate: RecipeDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        infoImageView.setRounded(cornerRadius: infoImageView.frame.height/2)
        setInformation()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.delegate?.didPressNewRecipe()
    }
    
    func setInformation() {
        let information = DataSource().getRandomInfo()
        infoImageView.image = information.image
        infoLabel.text = information.text
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        self.delegate?.didPressNewRecipe()
        dismiss(animated: true)
    }
}
