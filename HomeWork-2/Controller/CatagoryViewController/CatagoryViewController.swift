//
//  CatagoryViewController.swift
//  HomeWork-2
//
//  Created by rasit on 3.01.2023.
//

import UIKit

class CatagoryViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    var myCatagory = ["Pharmacy", "Currency", "Weather"]
    var myImageCatagory = ["pharmacy" , "currency" , "weather"]
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "CatagoryCell", bundle: nil), forCellReuseIdentifier: "CatagoryCell")
    }
}
