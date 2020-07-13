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
        imageView.setRounded(cornerRadius: imageView.frame.height/2)
    }
}
