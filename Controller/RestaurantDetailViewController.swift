//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by Digital on 4/20/19.
//  Copyright © 2019 Digital. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {
    var restaurantImageName : String = ""
    var restaurantName : String = ""
    var restaurantType : String = ""
    var restaurantLocation : String = ""
    
    @IBOutlet var restaurantImageView : UIImageView!
    @IBOutlet var restaurantNameLabel : UILabel!
    @IBOutlet var restaurantLocationLabel : UILabel!
    @IBOutlet var restaurantTypeLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        restaurantImageView.image = UIImage(named: restaurantImageName)
        restaurantNameLabel.text = restaurantName
        restaurantLocationLabel.text = restaurantLocation
        restaurantTypeLabel.text = restaurantType
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
