//
//  Font.swift
//  NewsApp
//
//  Created by Евгений Самарин on 19.02.2021.
//

import Foundation
import UIKit

enum Font {
    enum Weight {
        case regular, bold
    }
    
    static func system(ofSize size: CGFloat, weight: Weight ) -> UIFont {
        switch weight {
        case .regular:
            return UIFont.systemFont(ofSize: size, weight: .regular)
        case .bold:
            return UIFont.systemFont(ofSize: size, weight: .bold)
        }
    }
}
