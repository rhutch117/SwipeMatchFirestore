//
//  CardView.swift
//  SwipeMatchFirestore
//
//  Created by Ryan Hutchison on 4/2/19.
//  Copyright © 2019 Ryan Hutchison. All rights reserved.
//

import UIKit

class CardView: UIView {
    
    fileprivate let imageView = UIImageView(image: UIImage(named: "lady5c"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 10
        clipsToBounds = true
        
        addSubview(imageView)
        imageView.fillSuperview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
