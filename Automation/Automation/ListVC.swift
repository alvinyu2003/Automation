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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ListVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let item = items[indexPath.row]
        cell.textLabel?.text = item.name
        return cell
    }
    
}
