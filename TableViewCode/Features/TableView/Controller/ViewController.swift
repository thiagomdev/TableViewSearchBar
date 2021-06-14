//
//  ViewController.swift
//  TableViewCode
//
//  Created by Thiago Monteiro  on 14/06/21.
//

import UIKit

class ViewController: UIViewController {

    var contacts = [
        "Ana",
        "Bia",
        "Zé",
        "Pedro",
        "Henrique",
        "Julia",
        "Neto",
        "Cris",
        "Jorge",
        "Mike",
        "Ana",
        "Bia",
        "Zé",
        "Pedro",
        "Henrique",
        "Julia",
        "Neto",
        "Cris",
        "Jorge",
        "Mike",
    ]
    
    var screenTableView: ScreenTableView?
    let searcBarController = UISearchController(searchResultsController: nil)
    
    let tabBarVC = UITabBarController()

    override func loadView() {
        
        self.screenTableView = ScreenTableView()
        self.screenTableView?.tableViewCustom.delegate = self
        self.screenTableView?.tableViewCustom.dataSource = self
        navigationItem.searchController = searcBarController
        searcBarController.searchBar.delegate = self
        self.view = self.screenTableView
    }
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Contacts"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    

}

extension ViewController: UISearchBarDelegate, UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
       
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ContactsTableViewCell.identifier, for: indexPath) as? ContactsTableViewCell else {
            return UITableViewCell()
        }
        
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = contact
        return cell
    }
}

