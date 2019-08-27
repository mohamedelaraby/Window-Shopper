//
//  ViewController.swift
//  Window-Shopper
//
//  Created by Winston on 8/27/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import UIKit

class MainVController: UIViewController {

    /*---------------[@IBOutlets]----------*/
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var itemPriceTxt: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Create custom button
        customButton()
    }


    
    
    
    /*------------[ @Custom Actions ]-----------*/
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
    }
    
    // @calculate :- Shift the calculate button up when the keyboard appears
    @objc private func calculate(){
    
    }
    
}

