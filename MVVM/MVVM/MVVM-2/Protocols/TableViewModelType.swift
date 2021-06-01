//
//  TableViewModelType.swift
//  MVVM
//
//  Created by Жадаев Алексей on 01.06.2021.
//

import Foundation

protocol TableViewModelType {
    var numberOfRows: Int { get }
    var profiles: [Profile2] { get }
}
