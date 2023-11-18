//
//  Scene2ViewViewController.swift
//  TabBarDemo
//
//  Created by 홍세희 on 2023/11/15.
//

import UIKit

class Scene2ViewController: UIViewController {
    @IBOutlet var showTex: UILabel!
    var textFieldText: String?
    
    @IBOutlet var scene2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showTex.text = textFieldText
        
        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination2 = segue.destination as! Tab1ViewController
        destination2.resultTextFieldText = (textFieldText ?? "") + (scene2TextField.text ?? "")
    }

}
