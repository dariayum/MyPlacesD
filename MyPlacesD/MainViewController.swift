//
//  MainViewController.swift
//  MyPlacesD
//
//  Created by Yumatova Daria on 02.10.2021.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restautantNames = [
    "Балкан Гриль", "Бочка", "Вкусные истории",
        "Дастархан", "Индокитай", "Классик",
    "Шок", "Bonsai", "Burger Heroes","Kitchen",
        "Love&Life", "Morris Pub",
        "Sherlock Holmes", "Speak Easy",
        "X.O"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restautantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = restautantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restautantNames[indexPath.row])

        return cell
    }


    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
