//
//  ViewController.swift
//  tableView
//
//  Created by siddappa tambakad on 08/12/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    
    
    let data: [Data] = [
        Data(title: "Siddu", onlineStatus: "Currently Online", backgroundImage: "peakpx", protection: "by Pass protection", powerImage: "powerOn"),
        Data(title: "Siddu", onlineStatus: "Currently Online", backgroundImage: "peakpx", protection: "by Pass protection", powerImage: "powerOn"),
        Data(title: "Siddu", onlineStatus: "Currently Online", backgroundImage: "peakpx", protection: "by Pass protection", powerImage: "powerOn"),
        Data(title: "Siddu", onlineStatus: "Currently Online", backgroundImage: "peakpx", protection: "by Pass protection", powerImage: "powerOn"),
        Data(title: "Siddu", onlineStatus: "Currently Online", backgroundImage: "peakpx", protection: "by Pass protection", powerImage: "powerOn"),
        Data(title: "Siddu", onlineStatus: "Currently Online", backgroundImage: "peakpx", protection: "by Pass protection", powerImage: "powerOn"),
        Data(title: "Siddu", onlineStatus: "Currently Online", backgroundImage: "peakpx", protection: "by Pass protection", powerImage: "powerOn"),
        Data(title: "Siddu", onlineStatus: "Currently Online", backgroundImage: "peakpx", protection: "by Pass protection", powerImage: "powerOn"),
        Data(title: "Siddu", onlineStatus: "Currently Online", backgroundImage: "peakpx", protection: "by Pass protection", powerImage: "powerOn"),
        Data(title: "Siddu", onlineStatus: "Currently Online", backgroundImage: "peakpx", protection: "by Pass protection", powerImage: "powerOn")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let datas = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableVc
        cell.backImageView.image = UIImage(named: datas.backgroundImage)
        cell.nameLabel.text = datas.title
        cell.onlineLabel.text = datas.onlineStatus
        cell.powerImageView.image = UIImage(named: datas.powerImage )
        cell.protectionLabel.text = datas.protection
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

