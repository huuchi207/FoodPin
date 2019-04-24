//
//  Restaurant.swift
//  FoodPin
//
//  Created by Digital on 4/22/19.
//  Copyright © 2019 Digital. All rights reserved.
//

import Foundation
class Restaurant {
    var name : String
    var type : String
    var location : String
    var image : String
    var isVisited : Bool
    var phone : String
    var description : String
    init(name: String, type: String, location: String, phone: String, description: String, image: String, isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isVisited = isVisited
        self.phone = phone
        self.description = description
    }
    
    convenience init() {
        self.init(name: "", type: "", location: "", phone: "", description: "", image: "", isVisited: false)
    }
}
