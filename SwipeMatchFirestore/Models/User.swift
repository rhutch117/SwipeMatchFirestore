//
//  User.swift
//  SwipeMatchFirestore
//
//  Created by Ryan Hutchison on 4/3/19.
//  Copyright © 2019 Ryan Hutchison. All rights reserved.
//

import UIKit

struct User {
    let name: String
    let age: Int
    let profession: String
    let imageName: String
    
    func toCardViewModel() -> CardViewModel {
        let attributedText = NSMutableAttributedString(string: name, attributes: [.font: UIFont.systemFont(ofSize: 32, weight: .heavy)])
        attributedText.append(NSMutableAttributedString(string: " \(age)", attributes: [.font: UIFont.systemFont(ofSize: 24, weight: .regular)]))
        attributedText.append(NSMutableAttributedString(string: "\n\(profession)", attributes: [.font: UIFont.systemFont(ofSize: 20, weight: .regular)]))
        
        return CardViewModel(imageName: "\(imageName)", attributedString: attributedText, textAlignment: .left)
    }
}