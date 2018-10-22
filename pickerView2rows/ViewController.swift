//
//  ViewController.swift
//  pickerView2rows
//
//  Created by dmorenoar on 22/10/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    var arrayTipos = ["Agua","Fuego","Eléctrico"]
    var arrayPokemons = ["Pikachu","Charmander","Bulbasaur"]
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayTipos.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            label.text = arrayTipos[row]
            return arrayTipos[row]
        }else{
            label2.text = arrayPokemons[row]
            return arrayPokemons[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            label.text = arrayTipos[row]
        }else{
            label2.text = arrayPokemons[row]
        }
        
    }
    
    
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }
    
    
}

