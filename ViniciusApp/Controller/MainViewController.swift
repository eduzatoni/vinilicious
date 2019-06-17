//
//  MainViewController.swift
//  ViniciusApp
//
//  Created by Eduardo Curupana on 12/11/2018.
//  Copyright © 2018 Eduardo Curupana. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        setRoundButton()
        setRounded()
    }
    
    func setRoundButton(){
        button.layer.cornerRadius = 30
        button.layer.masksToBounds = true
    }
    
    func setRounded() {
        
        imageView.layer.masksToBounds = false
        imageView.layer.cornerRadius = imageView.frame.height/2
        imageView.clipsToBounds = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
