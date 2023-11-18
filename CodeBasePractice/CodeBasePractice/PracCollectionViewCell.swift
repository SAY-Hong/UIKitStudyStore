//
//  PracCollectionViewCell.swift
//  CodeBasePractice
//
//  Created by 홍세희 on 2023/11/14.
//

import UIKit

class PracCollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.cellSetting()
    }
    required init?(coder: NSCoder) {
        fatalError("")
    }
    func cellSetting() {
        self.backgroundColor = .green
        self.addSubview(imageView)
        
        imageView.contentMode = .scaleToFill
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    var imageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
}
