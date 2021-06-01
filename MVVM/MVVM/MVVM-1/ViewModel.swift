//
//  ViewModel.swift
//  MVVM
//
//  Created by Жадаев Алексей on 01.06.2021.
//

import Foundation

class ViewModel {
    
    private var profile = Profile(name: "Johna", secondName: "JamesonJr", age: 50)
    
    var name: String {
        return profile.name
    }
    
    var secondName: String {
        return profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
}
