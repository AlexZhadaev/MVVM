//
//  NetworkManager.swift
//  MVVM
//
//  Created by Жадаев Алексей on 14.07.2021.
//

import Foundation

class NetworkManager: NSObject {
    
    func fetchMovies(completion: ([String]) -> ()) {
        completion(["Movie1", "Movie2", "Movie3"])
    }
}
