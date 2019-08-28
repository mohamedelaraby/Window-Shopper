//
//  ViewController.swift
//  Window-Shopper
//
//  Created by Winston on 8/27/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import UIKit

class MainVController: UIViewController {

/*--------------------[ MARK:-  @IBOutlets ]-------------------------------------*/
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var itemPriceTxt: CurrencyTxtField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Draw custom button
        customButton()
    }

/*------------------[ MARK:-  @IBActions ]--------------------------------------------*/

    // [ clearCalculateButtonPressed ] :- Clear the wage, item price and result fields
    @IBAction func clearCalculatorButtonPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageTxt.text = " "
        itemPriceTxt.text = " "
    }
    
    
    
/*-------------------------[ MARK:- @Custom Actions ]-----------------------------------*/
    
    // [ customButton ] :- Draw a custom button style
    private func customButton(){
        let calcualteButton = UIButton(frame:CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcualteButton.backgroundColor = #colorLiteral(red: 0.9328799175, green: 0.5411881151, blue: 0.01200272765, alpha: 1)
        calcualteButton.setTitle("Caculate", for: .normal)
        calcualteButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        //Set target for the calculate button
        calcualteButton.addTarget(self, action: #selector(MainVController.calculate), for: .touchUpInside)
        
        //Display the calculate button above the system keyboard
        wageTxt.inputAccessoryView = calcualteButton
        itemPriceTxt.inputAccessoryView = calcualteButton
        
        //Hidden result and hours label in the waak from nib
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    
    // [ calculate ] :- Shift the calculate button up when the keyboard appears
    @objc private func calculate(){
    
        //check that the textfields is not empty
        if let wageTxt = wageTxt.text, let priceTxt = itemPriceTxt.text{
            //Check if the inputs is can converted to number or not
            if let wage = Double(wageTxt), let itemPrice = Double(priceTxt){
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                
                //Show the result
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: itemPrice))"
            }
        }
    }
    
}

