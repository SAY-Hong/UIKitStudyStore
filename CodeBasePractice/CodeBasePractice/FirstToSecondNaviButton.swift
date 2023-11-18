//
//  FirstToSecondNaviButton.swift
//  CodeBasePractice
//
//  Created by 홍세희 on 2023/11/14.
//

import UIKit

class FirstToSecondNaviButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(title: String) { //MARK: 클래스만의 생성자 생성하기
        super.init(frame: .zero)
        setTitle(title, for: .normal) // 버튼의 타이틀 설정
        titleLabel?.font = UIFont.systemFont(ofSize: 30)
        var config = UIButton.Configuration.plain()
        config.titlePadding = 50
        configuration = config
        backgroundColor = UIColor.lightGray // 버튼 배경 설정
        setTitleColor(.white, for: .normal) // 타이틀 컬러 설정
        layer.cornerRadius = 10 // 테두리 곡률 설정
        layer.borderWidth = 0.5 // 테두리 두께 설정
        layer.shadowColor = UIColor.darkGray.cgColor // 테두리 컬러 설정
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

