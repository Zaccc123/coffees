//
//  CoffeeTableViewCell.swift
//  coffee
//
//  Created by Zac on 11/10/16.
//  Copyright © 2016 zeta. All rights reserved.
//

import UIKit

class CoffeeTableViewCell: UITableViewCell {

    @IBOutlet weak var coffeeImageView: UIImageView!
    @IBOutlet weak var coffeeDescLabel: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(coffee: Coffee) {
        coffeeImageView.image = UIImage(named: coffee.imageName)
        coffeeDescLabel.text = coffee.description
//        coffeeDescLabel.sizeToFit()
    }
}
