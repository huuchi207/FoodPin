//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Digital on 4/25/19.
//  Copyright © 2019 Digital. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var rateButtons : [UIButton]!
    @IBOutlet var closeButton: UIButton!
    var restaurant = Restaurant()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        backgroundImageView.image = UIImage(named: restaurant.image)
        
        // Apply the blur effect
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        // Init transform to make animation for rating buttons
        let moveRightTransform = CGAffineTransform.init(translationX: 600, y: 0)
        for rateButton in rateButtons {
            rateButton.alpha = 0
            rateButton.transform = moveRightTransform
        }
        
        // Init transforms to move close button to top
        let moveTopTransform = CGAffineTransform.init(translationX: 0, y: -330)
        let moveBottomTransform = CGAffineTransform(translationX: 0, y: 30)
        let combineTransform = moveTopTransform.concatenating(moveBottomTransform)
        closeButton.transform = combineTransform
        closeButton.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Make animations for rating buttons
        var x = 0.0
        for rateButton in rateButtons {
            UIView.animate(withDuration: 0.4, delay: (0.1+x), options: [], animations: {
                rateButton.alpha = 1.0
                rateButton.transform = .identity
                }, completion: nil)
            x+=0.2
        }
        // Make close button appears
        UIView.animate(withDuration: 0.8, delay: 0.7, options: [], animations: {
            self.closeButton.alpha = 1
            self.closeButton.transform = .identity
        }, completion: nil)
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
