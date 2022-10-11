//
//  SecondViewController.swift
//  BMICalculator
//
//  Created by 동현김 on 2022/10/11.
//

import Foundation
import UIKit

class SecondViewController : UIViewController{
    
    @IBOutlet weak var bmiValueLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBOutlet weak var backButton: UIButton!
    
    var bmi: Double?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackButton()
        setBMIValueLabel()
        setAdviceLabel()
    }
    
    func setBMIValueLabel(){
        bmiValueLabel.clipsToBounds = true
        bmiValueLabel.layer.cornerRadius = 8
        bmiValueLabel.backgroundColor = getBmiColor()
        
        guard let bmi = bmi else {return}
        bmiValueLabel.text = String(bmi)
    }
    
    func setBackButton(){
        backButton.clipsToBounds = true
        backButton.layer.cornerRadius = 5
        
    }
    
    func setAdviceLabel(){
        adviceLabel.text = getBmiText()
    }
    
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func getBmiColor() -> UIColor?{
        if bmi == nil{  return UIColor.black    }

        switch bmi!{
        case ..<18.6 :
            return UIColor(displayP3Red: 22/255, green: 231/255, blue: 207/255, alpha: 1)
        case 18.6..<23.0 :
            return UIColor(displayP3Red: 212/255, green: 251/255, blue: 121/255, alpha: 1)
        case 23.0..<25.0 :
            return UIColor(displayP3Red: 218/255, green: 127/255, blue: 163/255, alpha: 1)
        case 25.0..<30.0 :
            return UIColor(displayP3Red: 255/255, green: 150/255, blue: 141/255, alpha: 1)
        case 30.0... :
            return UIColor(displayP3Red: 255/255, green: 100/255, blue: 78/255, alpha: 1)
        default:
            return UIColor.black
        }
        
    }
    
    func getBmiText() -> String {
        if(bmi == nil){
            return ""
        }
        
        switch bmi!{
        case ..<18.6:
            return "저체중"
        case 18.6..<23.0:
            return "표준"
        case 23.0..<25.0:
            return "과체중"
        case 25.0..<30.0:
            return "중도비만"
        case 30.0...:
            return "고도비만"
        default:
            return ""
        }
    }
    
}
