//
//  AttractionDetailViewController.swift
//  TableStoryDemo
//
//  Created by 홍세희 on 2023/11/16.
//

import UIKit
import WebKit
class AttractionDetailViewController: UIViewController {
    @IBOutlet var webView: WKWebView!
    
    //테이블 뷰 화면에서 가져올 내용!
    var webSite: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let address = webSite, let webUrl = URL(string: address) {
            let urlRequest = URLRequest(url: webUrl) //URL 요청할 객체 생성하기
            webView.load(urlRequest) //객체 이용해서 진짜 호출하기
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
