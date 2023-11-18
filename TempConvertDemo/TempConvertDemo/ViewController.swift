//
//  ViewController.swift
//  TempConvertDemo
//
//  Created by 홍세희 on 2023/11/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tempText: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertTempButton(_ sender: Any) {
        guard let tempString = tempText.text else {
            return
        }
        
        if let fatreheit = Double(tempString) {
            let celsius = (fatreheit - 32) / 1.8
            let resultText = "celsius \(celsius)"
            resultLabel.text = resultText
        } else {
            resultLabel.text = "변환 실패! 다시 입력하세요."
        }
    }
    
    //Did End on Exit 이벤트와 연결
    @IBAction func textFieldREturn(_ sender: UIButton) {
        sender.resignFirstResponder()
    }
    //터치 이벤트 처리하기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tempText.endEditing(true) //터치하면 동작 처리하기.
        
        
    }
}

