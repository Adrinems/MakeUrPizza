//
//  ViewController.swift
//  MakeUrPizza
//
//  Created by Adriana on 2/1/16.
//  Copyright © 2016 Adriana. All rights reserved.
//

import UIKit

let pizzaOrd = Pizza(size: "", paste: "",cheese: "",ingredients: []);

class ViewController: UIViewController {

    
    
    @IBAction func chooseSize(sender: AnyObject) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pizzaP.jpg")!)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

