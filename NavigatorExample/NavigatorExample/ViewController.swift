//
//  ViewController.swift
//  NavigatorExample
//
//  Created by 동현김 on 2022/10/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    // code로 화면 이동 -> 다음화면 또한 code로 작성 되어 있어야한다.
    @IBAction func codeNextButtonTapped(_ sender: UIButton) {
        print("codeNextButtonTapped")
        let firstVC = FirstViewController()
        firstVC.modalPresentationStyle = .fullScreen
        firstVC.stringFromPreviousController = "this message is located [ViewController]"
        present(firstVC, animated: true, completion: {() -> _ in
            print("completed")
        })
    }
    
    
    @IBAction func storyBoardWidCodeTapped(_ sender: UIButton) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
    
        secondVC.stringFromPreviousVC = "message from viewController"
        present(secondVC, animated: true, completion: {() -> _ in
            print("completed")
        })
        
    
        
    }
    
    @IBAction func withSegueTapped(_ sender: UIButton) {
        
        
    }
    
    @IBAction func buttonSegueTapped(_ sender: UIButton) {
        
        
    }
}

