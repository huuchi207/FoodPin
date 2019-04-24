//
//  RestaurantDetailIconTextCell.swift
//  FoodPin
//
//  Created by Digital on 4/22/19.
//  Copyright © 2019 Digital. All rights reserved.
//

import UIKit

class RestaurantDetailIconTextCell: UITableViewCell {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    @IBOutlet var iconImageView : UIImageView!
    @IBOutlet var shortTextLabel : UILabel! {
        didSet {
            shortTextLabel.numberOfLines = 0
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
