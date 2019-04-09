//
//  CardViewModel.swift
//  SwipeMatchFirestore
//
//  Created by Ryan Hutchison on 4/3/19.
//  Copyright © 2019 Ryan Hutchison. All rights reserved.
//

import UIKit

class CardViewModel {
    // Define the properties that our view will display/render out
    let imageNames: [String]
    let attributedString: NSAttributedString
    let textAlignment: NSTextAlignment
    
    // Reactive programming
    var imageIndexObserver: ((Int, UIImage?) -> ())?
    
    fileprivate var imageIndex = 0 {
        didSet {
            let imageName = imageNames[imageIndex]
            let image = UIImage(named: imageName)
            imageIndexObserver?(imageIndex, image)
        }
    }
    
    init(imageNames: [String], attributedString: NSAttributedString, textAlignment: NSTextAlignment) {
        self.imageNames = imageNames
        self.attributedString = attributedString
        self.textAlignment = textAlignment
    }
    
    func advanceToNextPhoto() {
        imageIndex = min(imageIndex + 1, imageNames.count - 1)
    }
    
    func goToPreviousPhoto() {
        imageIndex = max(0, imageIndex - 1)
    }
}
