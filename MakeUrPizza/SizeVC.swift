//
//  SizeVC.swift
//  MakeUrPizza
//
//  Created by Adriana on 2/2/16.
//  Copyright © 2016 Adriana. All rights reserved.
//

import UIKit

class SizeVC: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var sizeSelected: UILabel!
    @IBOutlet weak var sizeList: UIPickerView!
    @IBOutlet weak var button: UIButton!
    
       
    let optionSize = ["Small","Medium","Large"];
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pizzaP.jpg")!)
        button.enabled = false
        super.viewDidLoad()
        
        sizeList.delegate = self
        sizeList.dataSource = self
        
        

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
        return optionSize.count;
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return optionSize[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        sizeSelected.text = optionSize[row];
        if(sizeSelected.text != "None"){
            button.enabled = true
        }
    }

    @IBAction func saveSize(sender: AnyObject) {
        pizzaOrd.size = sizeSelected.text!
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
