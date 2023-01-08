//
//  PharmacyViewController + TableView.swift
//  HomeWork-2
//
//  Created by rasit on 3.01.2023.
//

import Foundation
import UIKit

// MARK: - TableView Protocols
extension PharmacyViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pharmacy?.result?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PharmacyCell", for: indexPath) as! PharmacyCell
        if let result = pharmacy?.result?[indexPath.row] {
            cell.nameLabel?.text = result.name
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = PharmacyDetailViewController()
        vc.pharmacyDetail = pharmacy?.result?[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
