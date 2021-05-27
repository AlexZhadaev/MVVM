//
//  ViewController.swift
//  MVVM
//
//  Created by Жадаев Алексей on 27.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var profile: Profile? {
        didSet {
            guard let profile = profile else { return }
            self.nameLabel.text = profile.name
            self.secondNameLabel.text = profile.secondName
            self.ageLabel.text = "\(profile.age)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        profile = Profile(name: "Johna", secondName: "JamesonJr", age: 50)
    }
    
    
}

