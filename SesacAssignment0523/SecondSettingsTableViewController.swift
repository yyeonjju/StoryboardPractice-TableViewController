//
//  SecondSettingsTableViewController.swift
//  SesacAssignment0523
//
//  Created by 하연주 on 5/23/24.
//

import UIKit

struct TableViewSection {
    let headerTitle : String
    let rowsTitle : [String]
}

class SecondSettingsTableViewController: UITableViewController {

    let numberOfRowsInSection = [3,4,1]
    let tableViewContents = [
        TableViewSection(headerTitle: "전체 설정", rowsTitle: ["공지사항", "실험실", "버전정보"]),
        TableViewSection(headerTitle: "개인 설정", rowsTitle: ["개인/보안", "알림", "채팅", "멀티프로필"]),
        TableViewSection(headerTitle: "기타", rowsTitle: ["고객센터/도움말"]),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRowsInSection[section]
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return tableViewContents[section].headerTitle
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: .none)
        cell.textLabel?.text = tableViewContents[indexPath.section].rowsTitle[indexPath.row]
        return cell
    }
    

}
