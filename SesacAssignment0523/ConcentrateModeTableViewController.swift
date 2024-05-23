//
//  ConcentrateModeTableViewController.swift
//  SesacAssignment0523
//
//  Created by 하연주 on 5/23/24.
//

import UIKit

struct Mode {
    let title : String
    let subTitle : String
    let iconName : String
    let iconColor : UIColor
}

class ConcentrateModeTableViewController: UITableViewController {
    let modeList = [
        Mode(title: "방해 금지 모드", subTitle: "", iconName: "moon.fill", iconColor : UIColor.purple),
        Mode(title: "수면", subTitle: "", iconName: "bed.double.fill", iconColor : UIColor.orange),
        Mode(title: "업무", subTitle: "09:00 - 18:00", iconName: "note.text", iconColor : UIColor.green),
        Mode(title: "개인시간", subTitle: "", iconName: "person.fill", iconColor : UIColor.blue),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return modeList.count
        } else if section == 1 {
            return 1
        } else {
            return 0
        }

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingModeCell")!
            
            cell.textLabel?.text = modeList[indexPath.row].title
            cell.detailTextLabel?.text = modeList[indexPath.row].subTitle
            cell.imageView?.image = UIImage(systemName: modeList[indexPath.row].iconName)
            cell.imageView?.tintColor = modeList[indexPath.row].iconColor
            
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "shareCell", for: indexPath) as! SharingDeviceTableViewCell
            cell.label.text = "모든 기기에서 공유"
            return cell
            
        }
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "모드 설정"
        }
        return nil
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 0 {
            return "집중모드에서는 경고 및 알림 소리가 울리지 않습니다."
        } else if section == 1 {
            return "이 기기에서 집중모드를 켜면 사용자의 다른 기기에서도 집중모드가 켜집니다"
        }
        return nil
    }

}

//shareCell
