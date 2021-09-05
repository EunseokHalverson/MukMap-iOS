//
//  UINavigationController.swift
//  MukMap (iOS)
//
//  Created by Klown on 2021/09/05.
//

import UIKit

extension UINavigationController {
    
    // Set BackgroundColor and remove underline separator
    func setCleanNavigationBar() {
        self.navigationBar.setBackgroundImage(UIImage(), for:.default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.layoutIfNeeded()
    }
}
