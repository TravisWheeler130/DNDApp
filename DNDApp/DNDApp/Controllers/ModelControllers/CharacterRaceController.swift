//
//  CharacterRaceController.swift
//  DNDApp
//
//  Created by Travis Wheeler on 11/11/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

import Foundation

class CharacterRaceController {
    
    static let shared = CharacterRaceController()
    
    var races: [RaceResultsInfo]?
    
    //CRUD
    //MARK: - Create
    
    //MARK: - Read
    func getRace(completion: @escaping([RaceResultsInfo]?) -> Void) {
        guard let baseURL = URL(string: "\(DNDConstants.baseURL)") else {completion([]); return}
        let racesComponentURL = baseURL.appendingPathComponent("races")
        guard let components = URLComponents(url: racesComponentURL, resolvingAgainstBaseURL: true) else {completion([]) ; return}
        guard let finalUrl = components.url else {completion([]) ; return}
        
        URLSession.shared.dataTask(with: finalUrl) { (data, _, error) in
            if let error = error {
                print("Error in \(#function) : \(error.localizedDescription) \n---\n \(error)")
                completion([])
                return
            }
            guard let data = data else {
                print("Data could not be set")
                completion([])
                return
            }
            let jsonDecoder = JSONDecoder()
            do {
                let races = try jsonDecoder.decode(RacesListTopLevelDict.self, from: data)
                completion(races.results)
            } catch {
                print("Error in \(#function) : \(error.localizedDescription) \n---\n \(error)")
                completion([]); return
            }
        } .resume()
    }
    
    //MARK: - Update
    
    //MARK: - Delete
    
    
    // Save function
    // load data function
}
