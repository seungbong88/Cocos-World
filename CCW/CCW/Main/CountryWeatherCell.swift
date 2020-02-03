//
//  CountryWeatherCell.swift
//  CCW
//
//  Created by seungbong on 2020/02/03.
//  Copyright © 2020 한승희. All rights reserved.
//

import UIKit

class CountryWeatherCell: UITableViewCell {

    @IBOutlet weak var countryImg: UIImageView!
    @IBOutlet weak var countryName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
