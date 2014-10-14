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
    
    let lemonPrice = 2.00
    let icePrice = 1.00
    
    // Stats
    
    var currentCash = 10.00
    var currentLemons = 1
    var currentIce = 1
    
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
    }

    @IBAction func unpurchaseLemonPressed(sender: AnyObject) {
    }

    @IBAction func purchaseIcePressed(sender: AnyObject) {
    }

    @IBAction func unpurchaseIcePressed(sender: AnyObject) {
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

