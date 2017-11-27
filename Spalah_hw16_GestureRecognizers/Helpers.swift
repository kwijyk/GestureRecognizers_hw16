//
//  Helpers.swift
//  Spalah_hw6_GestureRecognizers
//
//  Created by Sergey Gaponov on 11/26/17.
//  Copyright © 2017 Sergey Gaponov. All rights reserved.
//

import UIKit

struct Helpers {
    
    static func generateRandomArray(quntity: Int, maxBound: Int) -> [CGFloat] {
        
        var floatsArray = [CGFloat]()
        
        for _ in 1...quntity {
            let randomNum = CGFloat(arc4random_uniform(UInt32(maxBound)))
            floatsArray.append(randomNum)
        }
        return floatsArray
    }
}
