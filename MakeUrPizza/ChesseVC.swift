//
//  ChesseVC.swift
//  MakeUrPizza
//
//  Created by Adriana on 2/2/16.
//  Copyright © 2016 Adriana. All rights reserved.
//

import UIKit

class ChesseVC: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {

    
    
    @IBOutlet weak var cheeseLabel: UILabel!
    @IBOutlet weak var listCheese: UIPickerView!
    @IBOutlet weak var button: UIButton!
    
    
    let data = ["Mozzarella","Cheddar","Parmesan","No-cheese"];
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pizzaP.jpg")!)
        super.viewDidLoad()
        listCheese.delegate = self
        listCheese.dataSource = self
        button.enabled = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        cheeseLabel.text = data[row]
        if(cheeseLabel.text != "None" ){
            button.enabled = true
        }
    }
    
    @IBAction func saveCheese(sender: AnyObject) {
        pizzaOrd.cheese = cheeseLabel.text!;
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
