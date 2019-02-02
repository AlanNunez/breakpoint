//
//  ShadowView.swift
//  breakpoint
//
//  Created by Alan Nunez on 02/02/2019.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit

@IBDesignable
class ShadowView: UIView {
    
    override func awakeFromNib() {
        setupView()
        super.awakeFromNib()
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    func setupView() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
    }
}
