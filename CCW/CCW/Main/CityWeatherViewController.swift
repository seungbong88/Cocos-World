//
//  CityWeatherViewController.swift
//  CCW
//
//  Created by seungbong on 2020/02/03.
//  Copyright © 2020 한승희. All rights reserved.
//

import UIKit

class CityWeatherViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var assetName:String = ""
    var cities: [CityInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        print(assetName)
    }
    
    func loadData() {
        let decoder: JSONDecoder = JSONDecoder()
        
        guard let assetData = NSDataAsset(name: assetName) else {
            return
        }
        
        do {
            cities = try decoder.decode([CityInfo].self, from: assetData.data)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
    //MARK: -Table View delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: CityWeatherCell = tableView.dequeueReusableCell(withIdentifier: "cityWeatherCell") as! CityWeatherCell
        
        cell.weatherImg.image = UIImage(named: cities[indexPath.row].weaterImage())
        cell.cityName.text = cities[indexPath.row].city_name
        cell.temperature.text = "섭씨 \(cities[indexPath.row].state)도 / 화씨\(cities[indexPath.row].celsius)도"
        cell.precipitation.text = "강수량 \(cities[indexPath.row].rainfall_probability)%"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextView: DetailWeatherViewController = storyboard?.instantiateViewController(identifier: "detailWeatherView") as! DetailWeatherViewController
        
        nextView.assetName = cities[indexPath.row].weaterImage()
        nextView.temperature = "섭씨 \(cities[indexPath.row].state)도 / 화씨\(cities[indexPath.row].celsius)도"
        nextView.precipitation = "강수량 \(cities[indexPath.row].rainfall_probability)%"
        
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    
    
    
}
