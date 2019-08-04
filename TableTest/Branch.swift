//
//  Branch.swift
//  TableTest
//
//  Created by Razy Tech on 8/4/19.
//  Copyright © 2019 Razy Tech. All rights reserved.
//

import Foundation
import SwiftyJSON

struct BranchesOnMap {
    
    var retailerId: String?
    var Name : String?
    var Image : String?
    var Logo : String?
    var Id : String?
    var Latitude : String?
    var Longitude : String?
    var Distance : String?
    var AvOffers : String?
    var IsFavorite : Bool = false
    
    
    init(json:JSON) {
        
        
        
        self.retailerId = json["retailerId"].string ?? ""
        self.Name = json["Name"].string ?? ""
        self.Image = json["Image"].string ?? ""
        self.Logo = json["Logo"].string ?? ""
        self.Id = json["Id"].string ?? ""
        self.Latitude = json["Latitude"].string ?? ""
        self.Longitude = json["Longitude"].string ?? ""
        self.Distance = json["Distance"].string ?? ""
        self.AvOffers = json["AvOffers"].string ?? ""
        self.IsFavorite = json["IsFavorite"].bool!
    }
}
