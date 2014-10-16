//
//  ViewController.swift
//  LemonadeStand
//
//  Created by Khang Huynh on 2014-10-14.
//  Copyright (c) 2014 Khang Huynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Constants
    
    let lemonPrice:Int = 2
    let icePrice:Int = 1
    
    // Stats
    
    var currentCash:Int = 10
    var currentLemons:Int = 1
    var currentIce:Int = 1
    
    var lemonsToBuy:Int = 0
    var iceToBuy:Int = 0
    
    var lemonsToMix:Int = 0
    var iceToMix:Int = 0
    
    // Labels
    
    @IBOutlet weak var currentCashLabel: UILabel!
    @IBOutlet weak var currentLemonsLabel: UILabel!
    @IBOutlet weak var currentIceLabel: UILabel!
    
    @IBOutlet weak var lemonsForPurchaseLabel: UILabel!
    @IBOutlet weak var iceForPurchaseLabel: UILabel!
    
    
    @IBOutlet weak var lemonsToMixLabel: UILabel!
    
    @IBOutlet weak var iceToMixLabel: UILabel!
    
    // Buttons
    
    @IBAction func purchaseLemonPressed(sender: AnyObject) {
        
        if currentCash >= lemonPrice {
            lemonsToBuy++
            currentCash -= lemonPrice
        }
        else {
            showAlertWithText(message: "You don't have enough money for another lemon!")
        }
        
        updateMainView()
        
    }

    @IBAction func unpurchaseLemonPressed(sender: AnyObject) {
        
        if lemonsToBuy <= 0 {
            showAlertWithText(message: "You can't take away any more lemons!")
        }
        else {
            lemonsToBuy--
            currentCash += lemonPrice
        }
        
        updateMainView()
        
    }

    @IBAction func purchaseIcePressed(sender: AnyObject) {
        if currentCash >= icePrice {
            iceToBuy++
            currentCash -= icePrice
        }
        else {
            showAlertWithText(message: "You don't have enough money for another ice cube!")
        }
        
        updateMainView()
        
    }

    @IBAction func unpurchaseIcePressed(sender: AnyObject) {
        
        if iceToBuy <= 0 {
            showAlertWithText(message: "You can't take away any more ice cubes!")
        }
        else {
            iceToBuy--
            currentCash += icePrice
        }
        
        updateMainView()
        
    }
    
    @IBAction func addLemonMixPressed(sender: AnyObject) {
    }
    
    @IBAction func subtractLemonMixPressed(sender: AnyObject) {
    }
    
    @IBAction func addIceMixPressed(sender: AnyObject) {
    }
    
    @IBAction func subtractIceMixPressed(sender: AnyObject) {
    }
    
    @IBAction func startButtonPressed(sender: AnyObject) {
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateMainView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateMainView() {
        self.currentCashLabel.text = "\(currentCash)"
        self.currentLemonsLabel.text = "\(currentLemons)"
        self.currentIceLabel.text = "\(currentIce)"
        
        self.lemonsForPurchaseLabel.text = "\(lemonsToBuy)"
        self.iceForPurchaseLabel.text = "\(iceToBuy)"
        
        self.lemonsToMixLabel.text = "\(lemonsToMix)"
        self.iceToMixLabel.text = "\(iceToMix)"
    }
    
    func showAlertWithText(header: String = "Warning", message: String) {
        var alert = UIAlertController(title: header, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }

}

