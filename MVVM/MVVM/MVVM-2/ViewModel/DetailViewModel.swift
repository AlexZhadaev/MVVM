//
//  DetailViewModel.swift
//  MVVM
//
//  Created by Жадаев Алексей on 04.07.2021.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile2
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) years old!")
    }
    
    var age: Box<String?> = Box(nil)
    
    init(profile: Profile2) {
        self.profile = profile
    }
}
