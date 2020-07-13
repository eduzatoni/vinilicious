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

    override func viewDidLoad() {
        super.viewDidLoad()
        infoImageView.setRounded(cornerRadius: infoImageView.frame.height/2)
        setInformation()
    }
    
    func setInformation() {
        let information = DataSource().getRandomInfo()
        infoImageView.image = information.image
        infoLabel.text = information.text
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
