//
//  CurrencyViewController.swift
//  HomeWork-2
//
//  Created by rasit on 3.01.2023.
//

import UIKit

class CurrencyViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak private var tableView: UITableView!
    @IBOutlet weak private var activityIndicator: UIActivityIndicatorView!
    
    // MARK: - Variables
    var viewmodel = CurrencyViewModel()
    var currency : Currency?
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBar()
        registerCurrencyTableView()
        viewmodel.delegate = self
        viewmodel.getCurrencyList()
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
    }

    // MARK: - Register TableView
    private func registerCurrencyTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CurrencyCell", bundle: nil), forCellReuseIdentifier: "CurrencyCell")

    }
    
    // MARK: - Add image for navigation bar
    private func setNavigationBar() {
        let logo = UIImage(named: "currency")
        let imageView = UIImageView(image:logo)
        imageView.contentMode = .scaleAspectFit
        self.navigationItem.titleView = imageView
    }
}
// MARK: - Currency Protocol
extension CurrencyViewController : GetCurrency {
    func getCurrency(currency: Currency) {
        self.currency = currency
        self.activityIndicator.stopAnimating()
        tableView.reloadData()
    }
}
