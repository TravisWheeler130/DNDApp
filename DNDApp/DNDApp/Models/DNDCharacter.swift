//
//  DNDCharacter.swift
//  DNDApp
//
//  Created by Travis Wheeler on 10/29/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

import UIKit

class Character {
var characterName: String
var characterClass: CharacterClass
var characterLevel: Int
var characterImage: UIImage?

    init(characterName: String, characterClass: CharacterClass, characterLevel: Int, characterImage: UIImage?) {
    self.characterName = characterName
    self.characterClass = characterClass
    self.characterLevel = characterLevel
    self.characterImage = characterImage
    }
}
