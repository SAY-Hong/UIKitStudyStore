//
//  FirstViewController.swift
//  CodeBasePractice
//
//  Created by 홍세희 on 2023/11/14.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemBackground
        self.navigationItem.title = "FirstControllerView"
        //MARK: back 버튼 부분의 문구는 따로 못 바꾸나?
        //다음뷰에서 self.navigationItem.title 지정을 안해주면 자동으로 이걸로 back 버튼 문구도 지정이 된다.
        
        //MARK: 두번째 뷰로 넘어가는 버튼 ver.1
        //네비게이션바에 버튼 넣기
        let rightButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.play, target: self, action: #selector(goToThirdViewButton(_ :)))
        self.navigationItem.rightBarButtonItem = rightButton
        
        //MARK: 두번째 뷰로 넘어가는 버튼 ver.2
        //커스텀 버튼 생성하기
        //버튼 커스텀 적용하기
        let nextViewButton = FirstToSecondNaviButton(title: "NEXT VIEW")
        nextViewButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(nextViewButton)
        nextViewButton.addTarget(self, action: #selector(goToSecondViewButton), for: .touchUpInside)
        
        let constaints = [
            nextViewButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            nextViewButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -50)
        ]
        
        NSLayoutConstraint.activate(constaints)
    }
    @objc func goToSecondViewButton(_ sender: UIButton) {
        //MARK: @IBAction?
        let secondView = SecondViewController()
        self.navigationController?.pushViewController(secondView, animated: true)
    }
    
    @objc func goToThirdViewButton(_ sender: UIButton) {
        let thirdView = PracticeTableViewController()
        self.navigationController?.pushViewController(thirdView, animated: true)
    }

}

#Preview {
    FirstViewController()
}
