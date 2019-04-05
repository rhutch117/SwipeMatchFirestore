//
//  Advertiser.swift
//  SwipeMatchFirestore
//
//  Created by Ryan Hutchison on 4/4/19.
//  Copyright © 2019 Ryan Hutchison. All rights reserved.
//

import UIKit

struct Advertiser {
    let title: String
    let brandName: String
    let posterPhotoName: String
    
    func toCardViewModel() -> CardViewModel {
        let attributedString = NSMutableAttributedString(string: title, attributes: [.font: UIFont.systemFont(ofSize: 34, weight: .heavy)])
        attributedString.append(NSAttributedString(string: "\n\(brandName)", attributes: [.font: UIFont.systemFont(ofSize: 24, weight: .bold)]))
        
        return CardViewModel(imageName: posterPhotoName, attributedString: attributedString, textAlignment: .center)
    }
}