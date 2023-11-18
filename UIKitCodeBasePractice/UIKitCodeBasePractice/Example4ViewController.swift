//
//  Example4ViewController.swift
//  UIKitCodeBasePractice
//
//  Created by 홍세희 on 2023/11/14.
//

import UIKit

class Example4ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tapButton = UIButton()
        tapButton.translatesAutoresizingMaskIntoConstraints = false
        
        tapButton.setTitle("Button", for: UIControl.State.normal)
        tapButton.backgroundColor = UIColor.blue
        
        
        self.view.addSubview(tapButton)

        let constraints = [
            tapButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            tapButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            tapButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -50)
        ]

        
        NSLayoutConstraint.activate(constraints)
        
    }
}

#Preview {
    Example4ViewController()
}
