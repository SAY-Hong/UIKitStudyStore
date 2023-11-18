//
//  ThirdViewController.swift
//  CodeBasePractice
//
//  Created by 홍세희 on 2023/11/14.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.navigationItem.title = "ThirdViewController"
        
        let contentTitle = UILabel()
        contentTitle.translatesAutoresizingMaskIntoConstraints = false
        contentTitle.text = "Hstack Practice"
        self.view.addSubview(contentTitle)
        
        
        
    }
}


