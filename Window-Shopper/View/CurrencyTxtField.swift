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

    
    // [ draw ] :- Draw custom currency sign depending on your local location
    override func draw(_ rect: CGRect) {
        // @size :- the Width of currency label
        let size: CGFloat = 20
        
        // @currencyLabel :- all the label shape measurments
         let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        
        //CurrencyLabel attributes
        currencyLabel.backgroundColor = #colorLiteral(red: 0.9080583994, green: 0.9080583994, blue: 0.9080583994, alpha: 0.8)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        
        // [ @NumberFormatter  ] :- A formatter that converts between numeric values and their textual representations.∫
        // @formatter :- Format your result in currency number style
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
         // [ @locale  ] :- The locale determines the default values for many formatter attributes, such as ISO country and language codes, currency code, calendar, system of measurement, and decimal separato
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
        
    }

    // [ prepareForInterfaceBuilder ] :- Attach custom design drawing to the storyboard
    override func prepareForInterfaceBuilder(){
        styleTextField()
    }

    // [ awakeFromNib ] :- Prepares the receiver for service after it has been loaded from an Interface Builder archive, or nib file.
    override func awakeFromNib() {
        super.awakeFromNib()
        styleTextField()
    }
    
    // [ styleTextField ] :- Custom style of TextField
    private func styleTextField(){
        backgroundColor = #colorLiteral(red: 0.9922674298, green: 0.9842233062, blue: 0.9753331542, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        //Place holder
        if let placeHolder = placeholder  {
        let place = NSAttributedString(string: placeHolder, attributes: [.foregroundColor: #colorLiteral(red: 0.9922674298, green: 0.9842233062, blue: 0.9753331542, alpha: 1)])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
