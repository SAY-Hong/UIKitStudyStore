//
//  FormatViewController.swift
//  UIKitCodeBasePractice
//
//  Created by 홍세희 on 2023/11/14.
//

import UIKit

class FormatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let imageView = UIImageView()
        imageView.image = UIImage(named: "roofi")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(imageView)
        
        let viewsDict = ["imageView": imageView]
        let metrics = ["width": 200, "height": 200, "top": 20, "left": 10, "right": 10, "space": 10]
        
        let hconstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:[imageView(200)]", metrics: metrics, views: viewsDict)
        
        let vconstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:[imageView(200)]", options: NSLayoutConstraint.FormatOptions.alignAllCenterX, metrics: nil, views: viewsDict)
        
        NSLayoutConstraint.activate(hconstraints + vconstraints)
    }

}

#Preview {
    FormatViewController()
}
