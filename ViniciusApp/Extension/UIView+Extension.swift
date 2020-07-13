//
//  UIView+Extension.swift
//  ViniciusApp
//
//  Created by Eduardo Zatoni on 12/07/2020.
//  Copyright © 2020 Eduardo Curupana. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

extension UIView {
    func setRounded(cornerRadius: CGFloat, masksToBounds: Bool = true) {
        layer.masksToBounds = masksToBounds
        layer.cornerRadius = cornerRadius
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
        layer.add(shakeGroup, forKey: "shakeIt")
        
        //VIBRATE
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
}
