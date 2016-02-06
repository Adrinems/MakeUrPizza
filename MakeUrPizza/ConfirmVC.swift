//
//  ConfirmVC.swift
//  MakeUrPizza
//
//  Created by Adriana on 2/4/16.
//  Copyright © 2016 Adriana. All rights reserved.
//

import UIKit

class ConfirmVC: UIViewController {

    
    
    @IBOutlet weak var sizeL: UILabel!
    @IBOutlet weak var pasteL: UILabel!
    @IBOutlet weak var cheeseL: UILabel!
    @IBOutlet weak var ingredientsL: UITextView!
    
    
    
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pizzaP.jpg")!)
        super.viewDidLoad()
        
        
        var ingred:String = ""
        for opt in pizzaOrd.ingredients{
            if(opt != "None"){
                ingred += "\(opt), "
            }
        }

        sizeL.text = pizzaOrd.size
        pasteL.text = pizzaOrd.paste
        cheeseL.text = pizzaOrd.cheese
        ingredientsL.text = ingred
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendKitchen(sender: AnyObject) {
        let alertController  = UIAlertController(title: "Ready", message: "Your pizza was sent to the kitchen", preferredStyle: .Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler:{action in}))
        self.presentViewController(alertController, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
