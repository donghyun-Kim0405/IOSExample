//
//  ViewController.swift
//  BMICalculator
//
//  Created by 동현김 on 2022/10/11.
//

import UIKit

class ViewController: UIViewController {

    var bmiCalculator: BMICalculator?
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var calculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiCalculator = BMICalculator()
        setTextField()
    
        
    
    }//viewDidLoad
    
    func setTextField(){
        heightTextField.delegate = self
        weightTextField.delegate = self
        
        heightTextField.placeholder = "cm단위로 입력해주세요"
        weightTextField.placeholder = "kg단위로 입력해주세요"
        
    }
    
    func setMainLabel(){
        mainLabel.text = "키와 몸무게를 입력해 주세요."
    }
    
    func setCalculateButton(){
        calculateButton.clipsToBounds = true
        calculateButton.layer.cornerRadius = 5
        calculateButton.setTitle("BMI 계산하기", for: .normal)
    }
    
    
    //----------------------------------------------------
    //action

    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        if heightTextField.text == "" || weightTextField.text == ""{
            mainLabel.text = "키와 몸무게를 입력해야합니다."
            mainLabel.textColor = UIColor.red
            return
        }
        mainLabel.text = "키와 몸무게를 입력해 주세요"
        mainLabel.textColor = UIColor.black
        moveToNextPage()
    }
    
    
    func moveToNextPage(){
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
        
        secondViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
    
        secondViewController.bmi = bmiCalculator?.calculate(height: heightTextField.text!, weight: weightTextField.text!)
        present(secondViewController, animated: true)
        heightTextField.text = ""
        weightTextField.text = ""
    }

}



//위 ViewController class를 확장
extension ViewController: UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        print("textfiled writed...")
        print(string)
        
        if Int(string) != nil || string == ""{
            return true //글자 입력을 허용
        }
        return false    //글자 입력 허용하지 않음
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if heightTextField.text != "", weightTextField.text != ""{
            weightTextField.resignFirstResponder()
            return true
        }else{
            weightTextField.becomeFirstResponder()
            return true
        }
        return false
    }
    
    
    //viewController에서 터치가 발생하면 -> keyBoard이외의 영역 (KeyBoard는 새로운 영역에 해당함)
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        heightTextField.resignFirstResponder()
        weightTextField.resignFirstResponder()
    }
    
    
}

