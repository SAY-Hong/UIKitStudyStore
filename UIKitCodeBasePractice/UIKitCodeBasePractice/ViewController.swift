//
//  ViewController.swift
//  UIKitCodeBasePractice
//
//  Created by 홍세희 on 2023/11/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tapButton = UIButton()
        tapButton.translatesAutoresizingMaskIntoConstraints = false
        
        tapButton.setTitle("Button", for: UIControl.State.normal)
        tapButton.backgroundColor = UIColor.blue
        tapButton.frame = CGRect(x: 50, y: 100, width: 150, height: 60)
        
        self.view.addSubview(tapButton)

        let constraints = [
            tapButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            tapButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ]
        
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    //createImageLayout()
}
    
//    func createImageLayout() {
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "roofi")
//        imageView.contentMode = .scaleAspectFill
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        
//        self.view.addSubview(imageView)
//        
//        //제약 조건 배열로 만들어서 한꺼번에 처리하기. 
//        let constraints = [
//            imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            imageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -200),
//            imageView.widthAnchor.constraint(equalToConstant: 200),
//            imageView.heightAnchor.constraint(equalToConstant: 200)
//        ]
//        
//        NSLayoutConstraint.activate(constraints)
    
    
//    func createLayout() {
//        let superView = self.view
//        
//        let myLabel1 = UILabel()
//        myLabel1.translatesAutoresizingMaskIntoConstraints = false
//        myLabel1.text = "My Label"
//        
//        let myButton = UIButton()
//        myButton.translatesAutoresizingMaskIntoConstraints = false
//        myButton.setTitle("My Button", for: UIControl.State.normal)
//        myButton.backgroundColor = UIColor.blue
//        
//        superView?.addSubview(myLabel1)
//        superView?.addSubview(myButton)
        
        //제약 조건 생성 및 추가 제약 조건
//        var myConstraint =
//           NSLayoutConstraint(item: myLabel1,
//                              attribute: NSLayoutConstraint.Attribute.centerY,
//                              relatedBy: NSLayoutConstraint.Relation.equal,
//                              toItem: superView,
//                              attribute: NSLayoutConstraint.Attribute.centerY,
//                              multiplier: 1.0,
//                              constant: 0)
//        
//        superView?.addConstraint(myConstraint)
//        
//        myConstraint =
//           NSLayoutConstraint(item: myLabel1,
//                              attribute: NSLayoutConstraint.Attribute.centerX,
//                              relatedBy: NSLayoutConstraint.Relation.equal,
//                              toItem: superView,
//                              attribute: NSLayoutConstraint.Attribute.centerX,
//                              multiplier: 1.0,
//                              constant: 0)
//        
//        superView?.addConstraint(myConstraint)
//        
//        myConstraint =
//           NSLayoutConstraint(item: myButton,
//                              attribute: NSLayoutConstraint.Attribute.trailing,
//                              relatedBy: NSLayoutConstraint.Relation.equal,
//                              toItem: myLabel1,
//                              attribute: NSLayoutConstraint.Attribute.leading,
//                              multiplier: 1.0,
//                              constant: -10)
//        superView?.addConstraint(myConstraint)
//        
//        myConstraint =
//           NSLayoutConstraint(item: myButton,
//                              attribute: NSLayoutConstraint.Attribute.firstBaseline,
//                              relatedBy: NSLayoutConstraint.Relation.equal,
//                              toItem: myLabel1,
//                              attribute: NSLayoutConstraint.Attribute.firstBaseline,
//                              multiplier: 1.0,
//                              constant: 0)
//        superView?.addConstraint(myConstraint)
        
//        myLabel1.centerYAnchor.constraint(equalTo: superView!.centerYAnchor, constant: -200).isActive = true
//        myLabel1.centerXAnchor.constraint(equalTo: superView!.centerXAnchor).isActive = true
//        
//        myButton.trailingAnchor.constraint(equalTo: myLabel1.leadingAnchor, constant: -10).isActive = true
//        myButton.centerYAnchor.constraint(equalTo: myLabel1.topAnchor).isActive = true
//        myButton.centerXAnchor.constraint(equalTo: myLabel1.centerXAnchor).isActive = true
//    }
//}

