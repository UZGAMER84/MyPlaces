//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Bobur Yusupov on 15/04/21.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
       static let restaurantNames = [
            "Lazeez", "Les Ailes", "BurgerTime", "Chopar Pizza", "BeyAfandi", "AJVA",
            "Zanjabil", "Istambul", "Yulduz", "SultanAhmed", "UZTURK", "EVOS", "Semurg",
            "Musaffo", "UzKebab"
        ]
    
   static func getPlaces() -> [Place]{
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Андижан", type: "Ресторан", image: place))
        }
        
        return places
    }
    
}

