import Foundation

class BMICalculator{
    
    func calculate(height: String, weight: String) -> Double{
        guard let height = Double(height) else{ return 0.0 }
        guard let weight = Double(weight) else {return 0.0 }
        
        var bmi = weight / (height * height) * 10000
        print(bmi)
        bmi = round(bmi * 10) / 10
        print("result is : \(bmi)")
        return bmi
    }
    
    
}
