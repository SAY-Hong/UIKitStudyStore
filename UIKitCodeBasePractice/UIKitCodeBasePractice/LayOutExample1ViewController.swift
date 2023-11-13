//
//  LayOutExample1ViewController.swift
//  UIKitCodeBasePractice
//
//  Created by 홍세희 on 2023/11/13.
//

import UIKit

class LayOutExample1ViewController: UIViewController {

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
            worldLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            worldLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            helloLabel.trailingAnchor.constraint(equalTo: worldLabel.leadingAnchor, constant: -40),
            helloLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
}

//#Preview {
//    LayOutExample1ViewController()
//}
