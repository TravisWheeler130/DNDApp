//
//  RaceList.swift
//  DNDApp
//
//  Created by Travis Wheeler on 11/8/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

import Foundation

class RaceList {
    
    //MARK: - List of Races
    struct RacesListTopLevelDict:Decodable {
        var count:Int
        var results:[RaceResultsInfo]
    }
    
    struct RaceResultsInfo:Decodable {
        var name:String
        var url:String
    }
}
