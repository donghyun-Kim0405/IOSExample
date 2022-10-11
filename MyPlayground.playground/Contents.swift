import UIKit
import Foundation

var number: Int = getNumberFromString(name: "kim")
print(number)


func getNumberFromString(name: String) -> Int {
    
    func getNumber(name: String)-> Int{
        print(name)
        return 3;
    }
    
    return getNumber(name: "test")
}
