//
//  Example2ViewController.swift
//  UIKitCodeBasePractice
//
//  Created by 홍세희 on 2023/11/13.
//

import UIKit

class Example2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setText()
    }
    func setText() {
        let helloLabel = UILabel()
        let worldLabel = UILabel()
        
        helloLabel.text = "HELLO"
        worldLabel.text = "WORLD"
        
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        worldLabel.translatesAutoresizingMaskIntoConstraints = false
            
        self.view.addSubview(helloLabel)
        self.view.addSubview(worldLabel)
        
        let constraints = [
            helloLabel.trailingAnchor.constraint(equalTo: self.view.centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
            worldLabel.leadingAnchor.constraint(equalTo: helloLabel.trailingAnchor, constant: 20),
            worldLabel.centerYAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
}

#Preview {
    Example2ViewController()
}
