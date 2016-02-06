//
//  PasteVC.swift
//  MakeUrPizza
//
//  Created by Adriana on 2/2/16.
//  Copyright © 2016 Adriana. All rights reserved.
//

import UIKit

class PasteVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pasteLabel: UILabel!
    
    @IBOutlet weak var listPaste: UIPickerView!
    @IBOutlet weak var button: UIButton!
    
    
    let data = ["Thin Crust","Crunchy","Thick Crust"];
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pizzaP.jpg")!)
        button.enabled = false
        super.viewDidLoad()
        listPaste.delegate = self
        listPaste.dataSource = self

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
        pasteLabel.text = data[row]
        if(pasteLabel.text != "None"){
            button.enabled = true
        }
    }
    
    

    @IBAction func savePaste(sender: AnyObject) {
        pizzaOrd.paste = pasteLabel.text!
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
