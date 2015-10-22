//
//  ViewController.swift
//  SwiftCalcTipIphone
//
//  Created by fpmi on 15.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    func calcTip(summa:Int,serviceRate:Float,foodRate:Float)->Int{
        var r = Float(0);
        r = r + serviceRate
        r = r + foodRate
        r = Float(summa) * r
        var myIntValue:Int = Int(r / 100)
        return myIntValue;
    }
    @IBOutlet weak var restaurantTextFiled: UITextField!

    @IBOutlet weak var summaTextField: UITextField!
    
    @IBOutlet weak var serviceSlider: UISlider!
    
    @IBOutlet weak var foodSlider: UISlider!
    
    @IBOutlet weak var buttonCalc: UIButton!
    
    override func viewDidLoad() {
        self.restaurantTextFiled.text = "Taj"
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculate(sender: AnyObject) {
        var serviceRate=serviceSlider.value
        var foodRate=foodSlider.value
        var summa=summaTextField.text
        let res = calcTip(summa.toInt()!,serviceRate: serviceRate,foodRate: foodRate)
        
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        // Configure the number formatter to your liking
        let s2 = nf.stringFromNumber(res)
        
        let alertController = UIAlertController(title: "Your tip", message:
            s2, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)

    }
    
    
    
   
    



}

