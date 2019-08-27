//
//  wagw.swift
//  Window-Shopper
//
//  Created by Winston on 8/27/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import Foundation
class  Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
