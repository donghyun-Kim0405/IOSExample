import Foundation
import UIKit

class FirstViewController: UIViewController{
    
    //저장 속성
    let mainLabel = UILabel()
    let backButton = UIButton(type: .system)
    
    var stringFromPreviousController: String?   //이전 화면에서 받아올 값
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    

    
    func configureUI() {
        mainLabel.text = stringFromPreviousController
        view.addSubview(mainLabel)  //가장 기본 뷰에 label을 붙임
        
        
        // Auto layout 잡기
        mainLabel.translatesAutoresizingMaskIntoConstraints = false //자동으로 사이즈 잡아주는 기능 끄기
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true //x축 중앙 정렬
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true // y축 중앙 정렬
        
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(.white, for: .normal)
        backButton.backgroundColor = .blue
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
        view.addSubview(backButton)
    
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
    
        
        view.backgroundColor = .gray

    }
    
    @objc func backButtonTapped(){
        print("BackButton tapped!")
    }
}
