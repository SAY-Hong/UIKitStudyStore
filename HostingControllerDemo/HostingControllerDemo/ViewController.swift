//
//  ViewController.swift
//  HostingControllerDemo
//
//  Created by 홍세희 on 2023/11/20.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //교재 p.629 ~ 630
        let swiftUIcontroller = UIHostingController(rootView: SwiftUIView(text: "Integration Three"))
        
        addChild(swiftUIcontroller)
        swiftUIcontroller.view.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(swiftUIcontroller.view)
        
        swiftUIcontroller.view.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        swiftUIcontroller.view.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        

    }

    //교재 p.626
    @IBSegueAction func showSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: SwiftUIView(text: "Integration One"))
    }
    
    @IBSegueAction func embedSwiftUiView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: SwiftUIView(text: "Integration Two"))
    }
    
    @IBSegueAction func embedPracticeView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: HostingPracticeSwiftUiView())
    }
}

