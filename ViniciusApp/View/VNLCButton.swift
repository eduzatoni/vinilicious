//
//  VNLCButton.swift
//  ViniciusApp
//
//  Created by Eduardo Zatoni on 13/07/2020.
//  Copyright © 2020 Eduardo Curupana. All rights reserved.
//

import UIKit

class VNLCButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 30 {
        didSet {
            refreshCorners(value: cornerRadius)
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }
    
    func sharedInit() {
        refreshCorners(value: cornerRadius)
    }
    
    func refreshCorners(value: CGFloat) {
        layer.cornerRadius = value
    }
}
