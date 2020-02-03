//
//  CountryWeatherViewController.swift
//  CCW
//
//  Created by seungbong on 2020/02/03.
//  Copyright © 2020 한승희. All rights reserved.
//

import UIKit

class CountryWeatherViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var countries: [CountryInfo] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "세계날씨"
        loadData()
    }
    
    func loadData() {
        
        let decoder: JSONDecoder = JSONDecoder()
        
        guard let assetData = NSDataAsset(name: "countries") else {
            return
        }
        
        do {
            countries = try decoder.decode([CountryInfo].self, from: assetData.data)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
    
    //MARK:-Table View Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CountryWeatherCell = tableView.dequeueReusableCell(withIdentifier: "countryWeatherCell") as! CountryWeatherCell
        cell.countryImg.image = UIImage(named: "flag_\(countries[indexPath.row].asset_name)")
        cell.countryName.text = countries[indexPath.row].korean_name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextView: CityWeatherViewController = storyboard?.instantiateViewController(identifier: "cityWeatherView") as! CityWeatherViewController
        nextView.assetName = countries[indexPath.row].asset_name
        self.navigationController?.pushViewController(nextView, animated: true)
    }
}
