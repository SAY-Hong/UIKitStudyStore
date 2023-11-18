//
//  TabViewController.swift
//  TabBarDemo
//
//  Created by 홍세희 on 2023/11/15.
//

import UIKit

class Tab1ViewController: UIViewController {

    @IBOutlet var inputData: UITextField!
    @IBOutlet var result: UILabel!
    var resultTextFieldText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        result.text = resultTextFieldText
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination1 = segue.destination as! Scene2ViewController
        destination1.textFieldText = inputData.text
    }

}

