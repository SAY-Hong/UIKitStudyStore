//
//  ViewController.swift
//  FileExampleDemo
//
//  Created by 홍세희 on 2023/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textBox: UITextField!
    
    var fileManager = FileManager.default
    
    var dataFile: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 화면 로딩하면 이미 있는 파일인지 체크하는 코드 작성하기
        //checkFile()
        //example1()
        example3()
        
    }
    //MARK: 05 - 단어의 빈도수를 계산하고 저장
    func example5() {
        let fileManager = FileManager.default
        
        do {
            let documentPath = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0].path
            let sourceFile = documentPath + "/" + "datafile.dat"
            let destinationFile = documentPath + "/" + "frequency.txt"
            
            // 단어의 빈도수를 계산하고 저장하는 코드
            let data = try Data(contentsOf: URL(fileURLWithPath: sourceFile))
            if let text = String(data: data, encoding: .utf8) {
                
                let words = text.split(separator: " ").map { $0.lowercased() }
                var frequency = [String:Int]()
                for word in words {
                    frequency[word, default: 0] += 1
                }
                var result = ""
                for (word, count) in frequency {
                    result += "\(word):\(count)\n"
                }
                
                if let resultData = result.data(using: .utf8) {
                    try resultData.write(to: URL(fileURLWithPath: destinationFile))
                }
            }
            
            // 변경된 파일 확인
            
        } catch {
            print(error)
        }
    }
    
    //MARK: 04 - 숫자들의 합계와 평균을 구하고 저장하는 코드
    func example4() {
        let fileManager = FileManager.default
        
        do {
            let documentPath = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0].path
            let sourceFile = documentPath + "/" + "datafile.dat"
            let destinationFile = documentPath + "/" + "summary.txt"
            
            // 숫자들의 합계와 평균을 구하고 저장하는 코드
            let data = try Data(contentsOf: URL(fileURLWithPath: sourceFile))
            if let text = String(data: data, encoding: .utf8) {
                
                let numbers = text.split(separator: ",").compactMap { Int($0) }
                let sum = numbers.reduce(0, +)
                let average = Double(sum) / Double(numbers.count)
                let summary = "합계: \(sum)\n평균: \(average)"
                
                if let summaryData = summary.data(using: .utf8) {
                    try summaryData.write(to: URL(fileURLWithPath: destinationFile))
                }
            }
            
            // 변경된 파일 확인
            
        } catch {
            print(error)
        }
    }
    
    //MARK: 03 - 특정 파일에 있는 텍스트를 역순으로 바꾸어 새로운 파일에 저장하기
    func example3() {
        let fileManager = FileManager.default
        
        do {
            let documentPath = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0].path
            let sourceFile = documentPath + "/" + "datafile.dat"
            let destinationFile = documentPath + "/" + "reversed.txt"
            
            // 텍스트를 역순으로 바꾸어 저장하는 코드
            let data = try Data(contentsOf: URL(fileURLWithPath: sourceFile))
            if let text = String(data: data, encoding: .utf8) {
                let reversedText = String(text.reversed())
                if let reverseData = reversedText.data(using: .utf8) {
                    try reverseData.write(to: URL(fileURLWithPath: destinationFile))
                }
            }
            
            // 변경된 파일 확인
            
        } catch {
            print(error)
        }
    }
    
    //MARK: 02 - 새로운 디렉토리 생성 후 파일 복사
    func example2() {
        let fileManager = FileManager.default
        
        do {
            let sourcePath = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0].path
            let destinationPath = sourcePath + "/" + "BackUp"
            //            let destinationPath = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathExtension("BackUp").path
            print(sourcePath)
            print(destinationPath)
            
            //폴더 만들기
            try fileManager.createDirectory(atPath: destinationPath, withIntermediateDirectories: true)
            let files = try fileManager.contentsOfDirectory(atPath: sourcePath)
            
            for file in files {
                // 파일을 복사
                let filePath = sourcePath + "/" + file
                let fileExtension = (file as NSString).pathExtension.lowercased()
                if fileExtension == "dat" {
                    let destinationFilePath = destinationPath + "/" + file
                    try fileManager.copyItem(atPath: filePath, toPath: destinationFilePath)
                }
            }
        } catch {
            print(error)
        }
    }
    
    //MARK: 01 - 파일 이름과 크기 출력
    func example1() {
        let fileManager = FileManager.default
        let currentPath = fileManager.currentDirectoryPath
        
        do {
            let files = try fileManager.contentsOfDirectory(atPath: currentPath)
            for file in files {
                // 파일 이름과 크기를 출력하는 코드를 작성하세요.
                let filePath = currentPath + "/" + file
                
                let attributions: NSDictionary = try fileManager.attributesOfItem(atPath: filePath) as NSDictionary
                let fileSize = attributions["NSFileSize"] as! UInt64 // 바이트 단위
                print("\(file) : \(fileSize) bytes")
                //print(file)
            }
        } catch {
            print(error)
        }
    }
    
    //사용자가 앱을 시작할 때마다 데이터 파일이 존재하는지 확인
    //파일이 존재하는 경우 앱에서 콘텐츠를 읽고 텍스트 필드에 표시하기
    //사용자가 이전에 텍스트를 저장한 적이 없을 경우 파일이 생성되지 않음
    func checkFile() {
        let dirPaths = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        //문서 디렉토리가 어디에 있는지 알고 나면 파일이 존재하는지 확인하기 전에
        //파일의 전체 경로를 구성한다.
        dataFile = dirPaths[0].appendingPathComponent("datafile.dat").path
        
        // 파일이 존재하는 경우 파일 내용을 읽고, 텍스트 필드에 넣음
        // 파일이 없는 경우 파일 생성
        if fileManager.fileExists(atPath: dataFile) {
            if let dataBuffer = fileManager.contents(atPath: dataFile) {
                let dataString = NSString(data: dataBuffer, encoding: String.Encoding.utf8.rawValue)
                //textBox.text = dataString as? String
                textBox.text = dataString as String?
            }
        }
    }
    
    @IBAction func saveText(_ sender: Any) {
        //텍스트 필드 객체의 텍스트를 변환하고 이를 Data 객체에 할당.
        //그 내용을 파일 관리자 객체의 CreateFile() 메서드를 호출하여 파일에 기록.
        if let text = textBox?.text {
            let dataBuffer = text.data(using: String.Encoding.utf8)
            fileManager.createFile(atPath: dataFile, contents: dataBuffer, attributes: nil)
            simpleAlert("저장성공!")
        }
    }
    
    //Alert
    func simpleAlert(_ message: String) {
        let alert = UIAlertController(title: "Save", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        //alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}

