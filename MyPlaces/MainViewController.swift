//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Bobur Yusupov on 05/04/21..
//

import UIKit

class MainViewController: UITableViewController {

    let restaurantNames = [
        "Lazeez", "Les Ailes", "BurgerTime", "Chopar Pizza", "BeyAfandi", "AJVA",
        "Zanjabil", "Istambul", "Yulduz", "SultanAhmed", "UZTURK", "EVOS", "Semurg",
        "Musaffo", "UzKebab"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.nameLabel?.text = restaurantNames[indexPath.row]
        cell.ImageOfPlace.image = UIImage(named: restaurantNames[indexPath.row])
        cell.ImageOfPlace.layer.cornerRadius = cell.ImageOfPlace.frame.size.height / 2
        cell.ImageOfPlace.clipsToBounds = true
        
        return cell
    }

    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
