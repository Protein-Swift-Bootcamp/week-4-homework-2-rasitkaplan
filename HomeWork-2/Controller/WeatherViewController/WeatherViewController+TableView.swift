//
//  WeatherViewController+TableView.swift
//  HomeWork-2
//
//  Created by rasit on 8.01.2023.
//

import Foundation
import UIKit

// MARK: - TableView Protocols
extension WeatherViewController : UITableViewDelegate , UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weather?.result?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        if let weather = weather?.result?[indexPath.row] {
            cell.setCell(weather: weather)
        }
        return cell
    }
    
}
