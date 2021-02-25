//
//  UIColor.swift
//  NewsApp
//
//  Created by Евгений Самарин on 19.02.2021.
//

import Foundation
import UIKit

extension UIColor {
    static func rgba(_ red: CGFloat,_ blue: CGFloat, _ green: CGFloat, alpha: CGFloat = 1 ) -> UIColor {
        return UIColor(red: red / 255, green: green / 255 , blue: blue / 255, alpha: alpha)
    }
}
