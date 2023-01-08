//
//  CurrencyViewController + TableView.swift
//  HomeWork-2
//
//  Created by rasit on 4.01.2023.
//

import Foundation
import UIKit
// MARK: - TableView Protocols
extension CurrencyViewController : UITableViewDelegate , UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currency?.result?.data?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CurrencyCell", for: indexPath) as! CurrencyCell
        if let currency = currency?.result?.data?[indexPath.row] {
            cell.setCell(currency: currency)
        }
        return cell
    }
    
}
