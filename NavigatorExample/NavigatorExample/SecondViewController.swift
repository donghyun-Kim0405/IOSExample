

import Foundation
import UIKit

class SecondViewController : UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    var stringFromPreviousVC: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = stringFromPreviousVC
    }
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true) {
            print("completed method!")
        }
    }

}
