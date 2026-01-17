//
//  UIColors+Ext.swift
//  RandomColors
//
//  Created by Moinak G  on 12/01/26.
//

import UIKit

extension UIColor {
    
    static func random() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1.0)
        return randomColor
    }
    
}
