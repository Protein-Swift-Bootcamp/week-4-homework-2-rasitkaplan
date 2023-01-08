//
//  CategoryViewController+TableView.swift
//  HomeWork-2
//
//  Created by rasit on 8.01.2023.
//

import Foundation
import UIKit
// MARK: - TableView Protocols
extension CatagoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCatagory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CatagoryCell", for: indexPath) as! CatagoryCell
        cell.catagoryNameLabel.text = myCatagory[indexPath.row]
        cell.catagoryImageView.image = UIImage(named: myImageCatagory[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc = PharmacyViewController(nibName: "PharmacyViewController", bundle: nil)
            self.navigationController?.pushViewController(vc, animated: true)
        } else if indexPath.row == 1  {
            let vc = CurrencyViewController(nibName: "CurrencyViewController", bundle: nil)
            self.navigationController?.pushViewController(vc, animated: true)
        } else if indexPath.row == 2 {
            let vc = WeatherViewController(nibName: "WeatherViewController", bundle: nil)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
