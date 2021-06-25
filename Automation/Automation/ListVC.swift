//
//  ListViewController.swift
//  Automation
//
//  Created by Alvin Yu on 1/6/20.
//  Copyright © 2020 Alvin Yu. All rights reserved.
//

import UIKit

class ListVC: UIViewController {

    struct Item {
        var name: String
    }
    
    var items = Array<Int>(1...42).map { Item(name: "Item: \($0)") }
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAccessibilityIDs()
    }
    
    private func setUpAccessibilityIDs() {
        tableView.accessibilityIdentifier = acsID.List.list
    }

}

extension ListVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        if indexPath.row < items.count {
            let item = items[indexPath.row]
            cell.textLabel?.text = item.name
        }
        return cell
    }
    
}
