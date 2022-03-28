//
//  HourlyCollectionViewCell.swift
//  WeatherGift
//
//  Created by Danny Park on 3/28/22.
//

import UIKit

class HourlyCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var hourlyTemperature: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    
    var hourlyWeather: HourlyWeather! {
        didSet {
            hourLabel.text = hourlyWeather.hour
            iconImageView.image = UIImage(systemName: hourlyWeather.hourlyIcon) // TODO
            hourlyTemperature.text = "\(hourlyWeather.hourlyTemperature)°"
        }
    }
}
