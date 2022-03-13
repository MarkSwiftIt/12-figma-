//
//  constans.swift
//  12(Fgma)
//
//  Created by Mark Goncharov on 11.01.2022.
//

import UIKit

enum Constans {
    enum Colors {
        static var blackIos: UIColor? {
            UIColor(named: "blackIos")
        }
    
        static var grayIos: UIColor? {
            UIColor(named: "greyColorsIos")
        }
   
        static var greenColorsIos: UIColor? {
            UIColor(named: "greenIos")
        }
    }
    enum fonts {
        static var ui30Regular: UIFont? {
            UIFont(name: "Inter-RegularBold", size: 30)
        }
        static var systemHeading: UIFont {
            UIFont.systemFont(ofSize: 30, weight: .semibold)
        }
        static var systemText: UIFont {
            UIFont.systemFont(ofSize: 20)
    }
}
    enum Text {
        static var skillbox = Bundle.main.localizedString(forKey: "SKILLBOX", value: "", table: "langRu")
        static var hello = Bundle.main.localizedString(forKey: "Hello", value: "", table: "langRu")
        static var weAreGladTo = Bundle.main.localizedString(forKey: "we are glad to", value: "", table: "langRu")
        static var seeYou = Bundle.main.localizedString(forKey: "see - you", value: "", table: "langRu")

    }
    enum image {
        static let stars = UIImage(named: "stars")
    }
}
