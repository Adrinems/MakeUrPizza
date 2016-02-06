//
//  IngredientsVC.swift
//  MakeUrPizza
//
//  Created by Adriana on 2/2/16.
//  Copyright © 2016 Adriana. All rights reserved.
//

import UIKit

class IngredientsVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    @IBOutlet weak var ingred1: UILabel!
    @IBOutlet weak var ingred2: UILabel!
    @IBOutlet weak var ingred3: UILabel!
    @IBOutlet weak var ingred4: UILabel!
    @IBOutlet weak var ingred5: UILabel!
    
    @IBOutlet weak var list1: UIPickerView!
    @IBOutlet weak var list2: UIPickerView!
    @IBOutlet weak var list3: UIPickerView!
    @IBOutlet weak var list4: UIPickerView!
    @IBOutlet weak var list5: UIPickerView!
    
    @IBOutlet weak var button: UIButton!
    
    let ingredients = ["Ham","Pepperoni","Turkey", "Mushrooms", "Onion", "Olive", "Sausage", "Bacon","Shrimp", "Chicken","Pineapple","Salami","Pepper"];
    
    var flag = false
    
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pizzaP.jpg")!)
        button.enabled = false
        super.viewDidLoad()
        list1.delegate = self;
        list1.dataSource = self;
        list2.delegate = self;
        list2.dataSource = self;
        list3.delegate = self;
        list3.dataSource = self;
        list4.delegate = self;
        list4.dataSource = self;
        list5.delegate = self;
        list5.dataSource = self;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ingredients.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ingredients[row]
    }
   
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(pickerView == list1){
            ingred1.text = ingredients[row]
            flag = true
        }
        else if(pickerView == list2){
            ingred2.text = ingredients[row]
            flag = true
        }else if(pickerView == list3){
            ingred3.text = ingredients[row]
            flag = true
        }else if(pickerView == list4){
            ingred4.text = ingredients[row]
            flag = true
        }else if(pickerView == list5){
            ingred5.text = ingredients[row]
            flag = true
        }
        
        if(flag == true){
            button.enabled = true
        }
    }

    @IBAction func saveIngredients(sender: AnyObject) {
        pizzaOrd.ingredients.append(ingred1.text!)
        pizzaOrd.ingredients.append(ingred2.text!)
        pizzaOrd.ingredients.append(ingred3.text!)
        pizzaOrd.ingredients.append(ingred4.text!)
        pizzaOrd.ingredients.append(ingred5.text!)
        
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
