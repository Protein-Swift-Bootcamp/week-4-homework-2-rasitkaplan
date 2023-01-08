//
//  CurrencyCell.swift
//  HomeWork-2
//
//  Created by rasit on 4.01.2023.
//

import UIKit

class CurrencyCell: UITableViewCell {

    @IBOutlet weak private var shadowView: UIView!
    @IBOutlet weak private var rateLabel: UILabel!
    @IBOutlet weak private var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        shadowView.layer.cornerRadius = 8
        shadowView.clipsToBounds = true

        shadowView.layer.shadowRadius = 10
        shadowView.layer.shadowOpacity = 1.0
        shadowView.layer.shadowOffset = CGSize(width: 3, height: 3)
        shadowView.layer.shadowColor = UIColor.green.cgColor
    }
    
    func setCell(currency: CurrencyData) {
        nameLabel.text = "Currency Name: \(currency.name ?? "")"
        rateLabel.text = "Currency Rate: \(currency.rate ?? 0.0)"
    }
}
