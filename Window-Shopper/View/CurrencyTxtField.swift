//
//  CurrencyTxtField.swift
//  Window-Shopper
//
//  Created by Winston on 8/27/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import UIKit


@IBDesignable ///make changes happend in storyboard
class CurrencyTxtField: UITextField{


    override func prepareForInterfaceBuilder(){
        styleTextField()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        styleTextField()
    }
    
    private func styleTextField(){
        backgroundColor = #colorLiteral(red: 0.9922674298, green: 0.9842233062, blue: 0.9753331542, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        //Place holder
        if let placeHolder = placeholder  {
        let place = NSAttributedString(string: placeHolder, attributes: [.foregroundColor: #colorLiteral(red: 0.9922674298, green: 0.9842233062, blue: 0.9753331542, alpha: 1)])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
