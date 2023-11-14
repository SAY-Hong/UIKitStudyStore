//
//  Example4ViewController.swift
//  UIKitCodeBasePractice
//
//  Created by 홍세희 on 2023/11/13.
//

import UIKit

class Example4ViewController: UIViewController {

    override func viewDidLoad() {
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
    }
}

#Preview {
    Example4ViewController()
}
