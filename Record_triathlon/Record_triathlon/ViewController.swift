//
//  ViewController.swift
//  Record_triathlon
//
//  Created by 桜井雄基 on 2020/12/05.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var date: UIDatePicker!
    
    @IBOutlet weak var taionList: UIPickerView!
    @IBOutlet weak var nameList: UIPickerView!
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var taion: UITextField!
    
    @IBOutlet weak var date_display: UITextField!
    //UIDatePickerを定義するための変数
      var datePicker: UIDatePicker = UIDatePicker()
    
    var list = [[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Delegate設定
        taionList.delegate = self
        taionList.dataSource = self
        
        nameList.delegate = self
        nameList.dataSource = self
        
        date.datePickerMode = UIDatePicker.Mode.date
        
        for _ in 0 ... 1{
                    list.append([])
                }
        
        list[0] = [
            "aida","uchida","fujita","azuma","yano","shibakura"
            ]
        
        list[1] = [
            "36.0","36.1","36.2","36.3","36.4","36.5","36.6","36.7","36.8","36.9","37.0","37.1","37.2","37.3","37.4","37.5"
        ]
        
        //出力
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年MM月dd日"
        
        date_display.text = formatter.string(from: datePicker.date)
        name.text="???"
        taion.text="???"
    }
        
    
    
        // UIPickerViewの列の数
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        // UIPickerViewの行数、リストの数
        func pickerView(_ pickerView: UIPickerView,
                        numberOfRowsInComponent component: Int) -> Int {
            if pickerView == nameList{
                return list[0].count
            }else {
                return list[1].count
            }
        }
        
        // UIPickerViewの最初の表示
        func pickerView(_ pickerView: UIPickerView,
                        titleForRow row: Int,
                        forComponent component: Int) -> String? {
            if pickerView == nameList{
                return list[0][row]
            }else{
                return list[1][row]
            }
        }

    // UIPickerViewのRowが選択された時の挙動
        func pickerView(_ pickerView: UIPickerView,
                        didSelectRow row: Int,
                        inComponent component: Int) {
            if pickerView == nameList{
                name.text = list[0][row]
            }else{
                taion.text = list[1][row]
            }
            //date_display.text=date
        }
    
       
  

    @IBAction func record(_ sender: Any) {
    }
}
