//
//  UINavigationController+Ext.swift
//  FoodPin
//
//  Created by Digital on 4/24/19.
//  Copyright © 2019 Digital. All rights reserved.
//

import UIKit

extension UINavigationController {
    open override var childForStatusBarStyle : UIViewController? {
    return topViewController
    }
}
