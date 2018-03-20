//
//  ViewController.swift
//  coderSwager
//
//  Created by Patrik Kemeny on 19/3/18.
//  Copyright © 2018 Patrik Kemeny. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{ // CategoryCell is in cellView in storyboard
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell }
        else {
            return CategoryCell()
        } // empty cell
    }
    }




