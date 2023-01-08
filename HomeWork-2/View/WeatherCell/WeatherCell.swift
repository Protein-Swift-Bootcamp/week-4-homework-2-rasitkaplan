//
//  WeatherCell.swift
//  HomeWork-2
//
//  Created by rasit on 8.01.2023.
//

import UIKit
import Kingfisher
class WeatherCell: UITableViewCell {

    @IBOutlet weak private var degreeLabel: UILabel!
    @IBOutlet weak private var dayLabel: UILabel!
    @IBOutlet weak private var statusLabel: UILabel!
    @IBOutlet weak private var statusImageView: UIImageView!
    @IBOutlet weak private var humidityLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setCell(weather: Weather) {
        dayLabel.text = weather.day
        degreeLabel.text = "Degree: \(weather.degree ?? "")"
        statusLabel.text = "Status: \(weather.status ?? "")"
        humidityLabel.text = "Humidity: %\(weather.humidity ?? "")"
        statusImageView.kf.setImage(with: URL(string: weather.icon ?? ""))
    }
}
