//
//  RestaurantDetailHeaderView.swift
//  FoodPin
//
//  Created by Digital on 4/22/19.
//  Copyright © 2019 Digital. All rights reserved.
//

import UIKit

class RestaurantDetailHeaderView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    @IBOutlet var headerImageView : UIImageView! {
        didSet {
            headerImageView.image = UIImage(named: "heart-tick")?.withRenderingMode(.alwaysTemplate)
            headerImageView.tintColor = .white
        }
    }
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var typeLabel: UILabel! {
        didSet {
            typeLabel.layer.cornerRadius = 5
            typeLabel.layer.masksToBounds = true
        }
    }
    @IBOutlet var heartImageView: UIImageView!
    @IBOutlet var ratingImageView : UIImageView!
    
}
