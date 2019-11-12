//
//  CharacterSubRace.swift
//  DNDApp
//
//  Created by Travis Wheeler on 11/8/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

import Foundation

class CharacterSubRace {
    
    //MARK: - Subrace
    struct SubraceTopLevelDict:Decodable {
        enum CodingKeys: String, CodingKey {
            case index
            case name
            case race
            case desc
            case abilityBonuses = "ability_bonuses"
            case startingProficiencies = "starting_proficiencies"
            case languages
            case racialTraits = "racial_traits"
        }
        var index:Int
        var name:String
        var race:Race
        var desc:String
        var abilityBonuses:[AbilityBonuses]
        var startingProficiencies:[StartingProficiencyDetail]
        var languages:[LanguageDetails]
        var racialTraits:[RacialTraits]
    }
    
    struct Race:Decodable {
        var url:String
        var name:String
    }
    
    struct AbilityBonuses:Decodable {
        
        enum CodingKeys: String, CodingKey {
            case str = "0"
            case dex = "1"
            case con = "2"
            case int = "3"
            case wis = "4"
            case cha = "5"
        }
        var str:Int
        var dex:Int
        var con:Int
        var int:Int
        var wis:Int
        var cha:Int
    }
    
    struct StartingProficiencyDetail:Decodable {
        var name:String
        var url:String
    }
    
    struct LanguageDetails:Decodable {
        var name:String
        var url:String
    }
    
    struct RacialTraits:Decodable {
        var name:String
        var url:String
    }
}
