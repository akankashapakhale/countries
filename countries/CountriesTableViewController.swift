//
//  CountriesTableViewController.swift
//  countries
//
//  Created by Akanksha pakhale on 11/08/21.
//

import UIKit
struct Country {
    var isoCode: String
    var name: String
}
class CountriesTableViewController: UITableViewController {
    let countries = [
        Country(isoCode: "at", name: "Austria"),
        Country(isoCode: "be", name: "Belgium"),
        Country(isoCode: "de", name: "Germany"),
        Country(isoCode: "el", name: "Greece"),
        Country(isoCode: "fr", name: "France"),
    ]


    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return countries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
              let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)

              let country = countries[indexPath.row]
      cell.textLabel?.text = country.name
      cell.detailTextLabel?.text = country.isoCode
      cell.imageView?.image = UIImage(named: country.isoCode)

              return cell
          }
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) ->
        UISwipeActionsConfiguration? {
        let edit = UIContextualAction(style: .normal, title: "Edit") {
            _, _, _ in
            print("edit tapped")
        }
        let delete = UIContextualAction(style: .destructive, title: "Delete") {
            _, _, _ in
            print("Delete tapped")
        }
        let  swipeConfiguration = UISwipeActionsConfiguration (actions: [edit,delete])
        return swipeConfiguration
    }
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) ->
        UISwipeActionsConfiguration? {
        let more = UIContextualAction(style: .normal, title: "more") {
            _, _, _ in
            print("more tapped")
          
        }
        more.backgroundColor = .systemBlue
        let  swipeConfiguration = UISwipeActionsConfiguration (actions: [more])
        return swipeConfiguration
        
}
}
    
    



//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let country = countries[indexPath.row]
//        cell.textLabel?.text = country.name
//
//                return cell

    

  

