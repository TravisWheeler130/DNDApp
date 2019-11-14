//
//  RacesTableViewController.swift
//  DNDApp
//
//  Created by Travis Wheeler on 11/11/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

import UIKit

class RacesTableViewController: UITableViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CharacterRaceController.shared.getRace { (results) in
            if let results = results {
                CharacterRaceController.shared.races = results
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return CharacterRaceController.shared.races?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "raceCell", for: indexPath)
        guard let races = CharacterRaceController.shared.races else { return UITableViewCell()}
        let race = races[indexPath.row]
        cell.textLabel?.text = race.name
        // Configure the cell...

        return cell
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
