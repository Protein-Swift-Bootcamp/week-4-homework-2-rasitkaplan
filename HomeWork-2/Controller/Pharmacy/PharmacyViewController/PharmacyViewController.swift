//
//  PharmacyViewController.swift
//  HomeWork-2
//
//  Created by rasit on 3.01.2023.
//

import UIKit

class PharmacyViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak private var tableView: UITableView!
    @IBOutlet weak private var activityIndicator: UIActivityIndicatorView!
    
    // MARK: - Variables
    private var viewModel = PharmacyViewModel()
    var pharmacy: Pharmacy?
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBar()
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        registerPharmacyTableView()
        viewModel.delegate = self
        viewModel.getPharmacyList()
    }
    // MARK: - Add image for navigation bar
    private func setNavigationBar() {
        let logo = UIImage(named: "pharmacy")
        let imageView = UIImageView(image:logo)
        imageView.contentMode = .scaleAspectFit
        self.navigationItem.titleView = imageView
    }

    // MARK: - TableView Register
    private func registerPharmacyTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "PharmacyCell", bundle: nil), forCellReuseIdentifier: "PharmacyCell")
    }
}
// MARK: - Pharmacy Protocol
extension PharmacyViewController: getPharmacy {
    func getPharmacy(pharmacy: Pharmacy) {
        self.pharmacy = pharmacy
        self.activityIndicator.stopAnimating()
        tableView.reloadData()
    }
}

