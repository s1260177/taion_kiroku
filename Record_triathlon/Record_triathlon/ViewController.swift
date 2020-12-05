//
//  ViewController.swift
//  Record_triathlon
//
//  Created by 桜井雄基 on 2020/12/05.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var taionList: UIPickerView!
    
    var taion_list = [
    "36.0","36.1","36.2","36.3","36.4","36.5","36.6","36.7","36.8","36.9","37.0","37.1","37.2","37.3","37.4","37.5"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Delegate設定
        taionList.delegate = self
        taionList.dataSource = self
        
    }
        
        // UIPickerViewの列の数
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        // UIPickerViewの行数、リストの数
        func pickerView(_ pickerView: UIPickerView,
                        numberOfRowsInComponent component: Int) -> Int {
            return taion_list.count
        }
        
        // UIPickerViewの最初の表示
        func pickerView(_ pickerView: UIPickerView,
                        titleForRow row: Int,
                        forComponent component: Int) -> String? {
            
            return taion_list[row]
        }

}

