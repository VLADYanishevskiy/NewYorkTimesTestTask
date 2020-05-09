//
//  ViewController.swift
//  NewYorkTimesTestTask
//
//  Created by Владислав on 09.05.2020.
//  Copyright © 2020 Владислав. All rights reserved.
//
import UIKit


class VCCategories: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    @IBOutlet weak var TableViewCategories: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @available(iOS 2.0, *)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return CurrentUsersData.Categories.count;
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        TableViewCategories.deselectRow(at: indexPath, animated: true);
        CurrentUsersData.selectedCategory = CurrentUsersData.Categories[indexPath.row];
        
        print(CurrentUsersData.selectedCategory);
    }
   
    @available(iOS 2.0, *)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        var cell = TableViewCategories.dequeueReusableCell(withIdentifier: "TableViewCellIdentifier", for: indexPath);
        
        cell.textLabel?.text = CurrentUsersData.Categories[indexPath.row];
        
        return cell;
    }



}

