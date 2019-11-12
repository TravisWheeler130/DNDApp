//
//  CharacterRaceController.swift
//  DNDApp
//
//  Created by Travis Wheeler on 11/11/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

import Foundation

class CharacterRaceController:Decodable {
    
    static let shared = CharacterRaceController()
    
    //CRUD
    //MARK: - Create
    
    //MARK: - Read
    static func fetchRaceList(completion: @escaping (RaceList.RacesListTopLevelDict?) -> Void) {
        
        guard let baseURL = URL(string: "\(DNDConstants.baseURL)") else {return}
        let racesComponentURL = baseURL.appendingPathComponent("races")
        print(racesComponentURL)
        URLSession.shared.dataTask(with: racesComponentURL) { (data, _, error) in
            if let error = error {
                print("Error in \(#function) : \(error.localizedDescription) \n---\n \(error)")
            }
            
            if let data = data {
                do{
                    let races = try JSONDecoder().decode(RaceList.RacesListTopLevelDict.self, from: data)
                    completion(races)
                } catch {
                    print("Error in \(#function) : \(error.localizedDescription) \n---\n \(error)")
                    completion(nil); return
                }
            }
            } .resume()
    }
    
    //MARK: - Update
    
    //MARK: - Delete
}
