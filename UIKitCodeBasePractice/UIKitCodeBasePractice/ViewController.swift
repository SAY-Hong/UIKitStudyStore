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
        // Do any additional setup after loading the view.
        super.viewDidLoad()
        let redView = UIView()
        redView.backgroundColor = UIColor.red
        redView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(redView)
        
        let greenView = UIView()
        greenView.backgroundColor = UIColor.green
        greenView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(greenView)
        
        
        let constraints = [
            redView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            redView.topAnchor.constraint(equalTo: self.view.topAnchor),
            redView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            redView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/3),
            
            greenView.leadingAnchor.constraint(equalTo: self.view.centerXAnchor),
            greenView.topAnchor.constraint(equalTo: self.view.topAnchor),
            greenView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            greenView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/3),
            greenView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/2),
            
            
        ]
        
        NSLayoutConstraint.activate(constraints)
        
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
    }
    
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

