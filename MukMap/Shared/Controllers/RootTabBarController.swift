//
//  RootTabBarController.swift
//  MukMap (iOS)
//
//  Created by Klown on 2021/09/05.
//

import Foundation
import UIKit

class RootTabBarController: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        
    }
    
    override func viewDidLoad() {
        // Start ViewController with Pinned VC?
        self.selectedIndex = 1
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(false)
    }
    
}
