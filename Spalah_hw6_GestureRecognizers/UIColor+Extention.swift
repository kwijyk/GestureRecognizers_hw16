//
//  UIColor+Extention.swift
//  Spalah_hw6_GestureRecognizers
//
//  Created by Sergey Gaponov on 11/27/17.
//  Copyright © 2017 Sergey Gaponov. All rights reserved.
//

import UIKit

extension UIColor {
    
    static var randomColor: UIColor {
        let arrayRGB = Helpers.generateRandomArray(quntity: 3, maxBound: 256)
        let randomColor =  UIColor(displayP3Red: arrayRGB[0] / 255, green: arrayRGB[1] / 255, blue: arrayRGB[2] / 255, alpha: 1)
       return randomColor
    }
}
