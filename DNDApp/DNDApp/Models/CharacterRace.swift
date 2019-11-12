//
//  CharacterRace.swift
//  DNDApp
//
//  Created by Travis Wheeler on 11/6/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

import Foundation

class CharacterRace {
    
    //MARK: - Race Details
    struct RaceTopLevelDict:Decodable {
        
        enum CodingKeys: String, CodingKey {
            case index
            case name
            case speed
            case abilityBonuses = "ability_bonuses"
            case alignment
            case age
            case size
            case sizeDescription = "size_description"
            case startingProficiencies = "starting_proficiencies"
            case startingProficiencyOptions = "starting_proficiency_options"
            case languages
            case languageOptions = "language_options"
            case languageDesc = "language_desc"
            case traits
            case subraces
        }
        var index:Int
        var name:String
        var speed:Int
        var abilityBonuses:[AbilityBonuses]
        var alignment:String
        var age:String
        var size:String
        var sizeDescription:String
        var startingProficiencies:[StartingProficiencyDetail]
        var startingProficiencyOptions:StartingProficiencyOptions?
        var languages:[LanguageDetails]
        var languageOptions:LanguageOptions?
        var languageDesc:String
        var traits:[TraitDetails]?
        var subraces:[SubracesDetails]?
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
    
    struct StartingProficiencyOptions:Decodable {
        var choose:Int
        var type:String
        var proficiencyChoices:[ProficiencyChoices]
    }
    
    struct ProficiencyChoices:Decodable {
        var name:String
        var url:String
    }
    
    struct LanguageDetails:Decodable {
        var name:String
        var url:String
    }
    
    struct LanguageOptions:Decodable {
        var choose:Int
        var type:String
        var from:[LanguageOptionDetails]
    }
    
    struct LanguageOptionDetails:Decodable {
        var name:String
        var url:String
    }
    
    struct TraitDetails:Decodable {
        var url:String
        var name:String
    }
    
    struct SubracesDetails: Decodable {
        var name:String
        var url:String
    }
} //End of Class
