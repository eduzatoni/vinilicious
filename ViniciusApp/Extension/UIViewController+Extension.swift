//
//  UIViewController+Extension.swift
//  ViniciusApp
//
//  Created by Eduardo Zatoni on 12/07/2020.
//  Copyright © 2020 Eduardo Curupana. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func alert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
