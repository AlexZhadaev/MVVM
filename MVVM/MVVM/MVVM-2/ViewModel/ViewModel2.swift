//
//  ViewModel2.swift
//  MVVM
//
//  Created by Жадаев Алексей on 01.06.2021.
//

import Foundation

class ViewModel2: TableViewViewModelType {

    private var selectedIndexPath: IndexPath?
    
    var profiles = [
        Profile2(name: "Peter", secondName: "Parker", age: 21),
        Profile2(name: "Otto", secondName: "Octavius", age: 44),
        Profile2(name: "Norman", secondName: "Osbourne", age: 52)
    ]
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil}
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
    
}
