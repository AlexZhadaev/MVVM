//
//  TableViewController.swift
//  MVVM
//
//  Created by Жадаев Алексей on 14.07.2021.
//

import UIKit

class TableViewController3: UITableViewController {

    @IBOutlet var viewModel: ViewModel3!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchMovies { [weak self] in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "identifierForCell", for: indexPath)
        
        cell.textLabel?.text = viewModel.titleForCell(atIndexPath: indexPath)
        
        return cell
    }

}
