//
//  ViewController.swift
//  M7WeatherApp
//
//  Created by Morgan, Greyson F. on 3/17/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let weather = ["Sunny", "Cloudy", "Rainy", "Snowy"].randomElement() ?? "Sunny"
        /*guard let weather else {
            return
        }*/
        let temperature = 23
        
        weatherImageView.image = getWeatherImage(matching: weather)
        statusLabel.text = weather
        temperatureLabel.text = "\(temperature)°F"
        
        descriptionLabel.text = getWeatherDescription(matching: temperature)
    }
    
    func getWeatherDescription(matching temperature: Int) -> String? {
        switch(temperature) {
        case 0..<20:
            return "Extreme cold"
        case 20..<50:
            return "It's cold outside!"
        case 50..<69:
            return "It's warm outside!"
        case 69..<86:
            return "It's hot outside!"
        default:
            return "It's very hot outside!"
        }
    }
    
    func getWeatherImage(matching weather: String) -> UIImage? {
        switch weather {
        case "Sunny":
            return UIImage(named:"sunny")
        case "Cloudy":
            return UIImage(named:"cloudy")
        case "Rainy":
            return UIImage(named:"rainy")
        case "Snowy":
            return UIImage(named:"snowy")
        default:
            return nil
        }
    }


}

