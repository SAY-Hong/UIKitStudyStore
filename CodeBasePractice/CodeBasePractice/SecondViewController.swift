//
//  ViewController.swift
//  CodeBasePractice
//
//  Created by 홍세희 on 2023/11/14.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        self.navigationItem.title = "SecondViewController"
        
        setupLayout()
        
        let constraints = [
            contentStack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            contentStack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        
            roofiImage.widthAnchor.constraint(equalToConstant: 300),
            roofiImage.heightAnchor.constraint(equalToConstant: 300),
            roofiImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            roofiImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            cardButton.topAnchor.constraint(equalTo: roofiImage.topAnchor),
            cardButton.heightAnchor.constraint(equalToConstant: 60)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    lazy var roofiImage: UIImageView = {
        let roofiImage = UIImageView()
        roofiImage.translatesAutoresizingMaskIntoConstraints = false
        roofiImage.image = UIImage(named: "roofi")
        return roofiImage
    }()
    
    lazy var cardButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("금요일 휴강 조아", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    lazy var contentStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        return stack
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        //label.numberOfLines = 0
        label.text = "한 달 뒤에 크리스마스래"
        label.textColor = .white
        return label
    }()
    
    func setupLayout(){
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        //스택에 넣기
        contentStack.addSubview(roofiImage)
        contentStack.addArrangedSubview(cardButton)
        contentStack.addArrangedSubview(titleLabel)
        
        
        contentView.addSubview(contentStack)

        view.backgroundColor = .lightGray
        view.addSubview(contentView)
    }
}

#Preview {
    SecondViewController()
}
