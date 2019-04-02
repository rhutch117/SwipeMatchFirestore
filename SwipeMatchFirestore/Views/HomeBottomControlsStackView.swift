//
//  HomeBottomControlsStackView.swift
//  SwipeMatchFirestore
//
//  Created by Ryan Hutchison on 4/1/19.
//  Copyright © 2019 Ryan Hutchison. All rights reserved.
//

import UIKit

class HomeBottomControlsStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.distribution = .fillEqually
        self.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let subviews = [UIImage(named: "refresh_circle"), UIImage(named: "dismiss_circle"), UIImage(named: "super_like_circle"),
         UIImage(named: "like_circle"), UIImage(named: "boost_circle")].map { (img) -> UIView in
            let button = UIButton(type: .system)
            button.setImage(img?.withRenderingMode(.alwaysOriginal), for: .normal)
            return button
        }
    
        subviews.forEach { (v) in
            addArrangedSubview(v)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
