//
//  CurrencyTxtField.swift
//  Window-Shopper
//
//  Created by Winston on 8/27/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import UIKit

class CurrencyTxtField: UITextField{

    override func awakeFromNib() {
        super.awakeFromNib()
        styleTextField()
    }
    
    private func styleTextField(){
        backgroundColor = #colorLiteral(red: 0.9922674298, green: 0.9842233062, blue: 0.9753331542, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        //Place holder
        if placeholder == nil {
            placeholder = " "
        }
        
        let placeHolder = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 0.9922674298, green: 0.9842233062, blue: 0.9753331542, alpha: 1)])
        attributedPlaceholder = placeHolder
    
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
