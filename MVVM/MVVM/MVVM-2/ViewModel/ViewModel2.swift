//
//  ViewModel2.swift
//  MVVM
//
//  Created by Жадаев Алексей on 01.06.2021.
//

import Foundation

class ViewModel2: TableViewModelType {
    
    var profiles = [
        Profile2(name: "Peter", secondName: "Parker", age: 21),
        Profile2(name: "Otto", secondName: "Octavius", age: 44),
        Profile2(name: "Norman", secondName: "Osbourne", age: 52)
    ]
    
    var numberOfRows: Int {
        return profiles.count
    }
}
