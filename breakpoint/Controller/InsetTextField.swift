//
//  InsetTextField.swift
//  breakpoint
//
//  Created by Alan Nunez on 01/02/2019.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit

@IBDesignable
class InsetTextField: UITextField {

    private var textRectOffSet: CGFloat = 20
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    override func awakeFromNib() {
        setupView()
        super.awakeFromNib()
    }
    override func textRect(forBounds bounds: CGRect) -> CGRect {
       return CGRect(x: bounds.origin.x + 20, y: bounds.origin.y, width: bounds.width, height: bounds.height)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 20, y: bounds.origin.y, width: bounds.width, height: bounds.height)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
       return CGRect(x: bounds.origin.x + 20, y: bounds.origin.y, width: bounds.width, height: bounds.height)
    }
    
    func setupView() {
        let placeholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        self.attributedPlaceholder = placeholder
    }
}
