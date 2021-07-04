//
//  TableViewCellViewModel.swift
//  MVVM
//
//  Created by Жадаев Алексей on 04.07.2021.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {

    private var profile: Profile2
    
    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
    
    init(profile: Profile2) {
        self.profile = profile
    }
}
