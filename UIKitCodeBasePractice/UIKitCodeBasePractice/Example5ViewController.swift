//
//  Example4ViewController.swift
//  UIKitCodeBasePractice
//
//  Created by 홍세희 on 2023/11/13.
//

import UIKit

class Example5ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createLatoutVisulaFormat()
//        let redView = UIView()
//        redView.backgroundColor = UIColor.red
//        redView.translatesAutoresizingMaskIntoConstraints = false
//        self.view.addSubview(redView)
//        
//        let greenView = UIView()
//        greenView.backgroundColor = UIColor.green
//        greenView.translatesAutoresizingMaskIntoConstraints = false
//        self.view.addSubview(greenView)
//        
//        
//        let constraints = [
//            redView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
//            redView.topAnchor.constraint(equalTo: self.view.topAnchor),
//            redView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
//            redView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/3),
//            
//            greenView.leadingAnchor.constraint(equalTo: self.view.centerXAnchor),
//            greenView.topAnchor.constraint(equalTo: self.view.topAnchor),
//            greenView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
//            greenView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/3),
//            greenView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/2),
//            
//            
//        ]
//        
//        NSLayoutConstraint.activate(constraints)
    }
    
    func createLatoutVisulaFormat() {
        let superView = self.view!
        
        let myLabel = UILabel()
        myLabel.text = "My Label"
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        
        superView.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("My Button", for: .normal)
        myButton.backgroundColor = UIColor.blue
        myButton.translatesAutoresizingMaskIntoConstraints = false
        
        superView.addSubview(myLabel)
        superView.addSubview(myButton)
        
        //뷰 사전 생성
        //수직 제약 조건
        let viewsDict = ["myButton": myButton, "myLabel": myLabel]
        let constraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-[myButton]-|", metrics: nil, views: viewsDict)
        
        //수평제약조건
        let btnAndLabelConst = NSLayoutConstraint.constraints(withVisualFormat: "|-[myButton]-[myLabel(==myButton)]-|", options: NSLayoutConstraint.FormatOptions.alignAllLastBaseline, metrics: nil, views: viewsDict)
        
        NSLayoutConstraint.activate(constraints + btnAndLabelConst)
        
    }
}

#Preview {
    Example5ViewController()
}
