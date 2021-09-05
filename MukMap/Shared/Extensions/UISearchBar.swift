//
//  UISearchBar.swift
//  MukMap (iOS)
//
//  Created by Klown on 2021/09/05.
//

import UIKit

extension UISearchBar {
    func setCleanSearchBar() {
        self.searchBarStyle = .prominent
        self.searchTextField.backgroundColor = .white
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 10
        self.layer.borderColor = #colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1)
        self.clipsToBounds = true
    }
}
