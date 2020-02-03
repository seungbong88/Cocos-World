//
//  DetailWeatherViewController.swift
//  CCW
//
//  Created by seungbong on 2020/02/03.
//  Copyright © 2020 한승희. All rights reserved.
//

import UIKit

class DetailWeatherViewController: UIViewController {
    
    var assetName: String = ""
    var temperature: String = ""
    var precipitation: String = ""
    
    
    @IBOutlet weak var weatherImg: UIImageView!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var precipitationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weatherImg.image = UIImage(named: assetName)
        temperatureLabel.text = temperature
        precipitationLabel.text = precipitation
        
        switch (assetName) {
        case "sunny":
            weatherLabel.text = "맑음"
        case "cloudy":
            weatherLabel.text = "흐림"
        case "rainy":
            weatherLabel.text = "비"
        case "snowy":
            weatherLabel.text = "눈"
        default:
            weatherLabel.text = ""
        }
    }
    
}
