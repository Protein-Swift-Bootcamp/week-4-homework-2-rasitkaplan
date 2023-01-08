//
//  WeatherViewController.swift
//  HomeWork-2
//
//  Created by rasit on 8.01.2023.
//

import UIKit

class WeatherViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak private var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak private var tableView: UITableView!
    
    // MARK: - Variables
    private var viewModel = WeatherViewModel()
    var weather: WeatherModel?

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBar()
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        registerWeatherTableView()
        viewModel.delegate = self
        viewModel.getWeatherList()
    }
    
    // MARK: - Add image for navigation bar
    private func setNavigationBar() {
        let logo = UIImage(named: "weather")
        let imageView = UIImageView(image:logo)
        imageView.contentMode = .scaleAspectFit
        self.navigationItem.titleView = imageView
    }

    // MARK: - TableView Register

    private func registerWeatherTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "WeatherCell", bundle: nil), forCellReuseIdentifier: "WeatherCell")
    }
}
// MARK: - Weather Protocol
extension WeatherViewController: GetWeather {
    func getWeather(weather: WeatherModel) {
        self.weather = weather
        self.activityIndicator.stopAnimating()
        tableView.reloadData()
    }
}
