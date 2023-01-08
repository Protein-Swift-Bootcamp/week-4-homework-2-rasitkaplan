//
//  SplashViewController.swift
//  HomeWork-2
//
//  Created by rasit on 3.01.2023.
//

import UIKit

class SplashViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var splashImageView: UIImageView!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        /// Navigate CategoryViewController after 2 seconds when application start.
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let vc = CatagoryViewController()
            self.navigationController?.setViewControllers([vc], animated: true)
        }
    }
}
