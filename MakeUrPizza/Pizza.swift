//
//  Pizza.swift
//  MakeUrPizza
//
//  Created by Adriana on 2/2/16.
//  Copyright © 2016 Adriana. All rights reserved.
//

import UIKit

class Pizza{
    var size:String
    var paste:String
    var cheese:String
    var ingredients:[String]
    
    init(size:String, paste:String,cheese:String, ingredients:[String]){
        self.size = size
        self.paste = paste
        self.cheese = cheese
        self.ingredients = ingredients;
    }
    
}
