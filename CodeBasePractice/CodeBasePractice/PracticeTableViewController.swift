//
//  PracticeTableViewController.swift
//  CodeBasePractice
//
//  Created by 홍세희 on 2023/11/14.
//

import UIKit

class PracticeTableViewController: UIViewController {
    lazy var tableView = UITableView(frame: .zero, style: .insetGrouped)
    let data = [["금","요","일","조","아","오","늘","은","월","요","일","!"],["피","자","🍕"],["박","ㅅ"]]
    let header = ["Section 1","Section 2","Section 3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(self.tableView)
        self.tableView.dataSource = self
        
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints = [
            self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            self.tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
}

//테이블뷰를 위한 필수 메서드
extension PracticeTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: .none)
        cell.textLabel?.text = data[indexPath.section][indexPath.row]
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return header.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return header[section]
    }
}

#Preview {
    PracticeTableViewController()
}
