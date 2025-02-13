//
//  FontLiterals.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/12/25.
//

import SwiftUI

enum FontWeight: String {
    case wantedSansdBold = "WantedSansStd-Bold"
    case wantedSansdSemiBold = "WantedSansStd-SemiBold"
    case wantedSansMedium = "WantedSansStd-Medium"
}

enum Title {
    case title1sb42
    case title1sb28
    case title2m42
    case title2m28
    case title3m30
    case title3m20
}

enum Body {
    case body1b16
    case body1m16
    case body2b14
    case body2m14
}

enum Button {
    case button1m20
    case button2m16
}

enum Caption {
    case caption1m16
    case caption2m12
}


extension Font {
    static func wantedSansFont(weight: FontWeight, ofSize fontSize: CGFloat) -> Font {
        return Font.custom(weight.rawValue, size: fontSize)
    }
    
    static func title(_ style: Title) -> Font {
        switch style {
        case .title1sb42: return wantedSansFont(weight: .wantedSansdSemiBold, ofSize: 42)
        case .title1sb28: return wantedSansFont(weight: .wantedSansdSemiBold, ofSize: 28)
        case .title2m42: return wantedSansFont(weight: .wantedSansMedium, ofSize: 42)
        case .title2m28: return wantedSansFont(weight: .wantedSansMedium, ofSize: 28)
        case .title3m30: return wantedSansFont(weight: .wantedSansMedium, ofSize: 30)
        case .title3m20: return wantedSansFont(weight: .wantedSansMedium, ofSize: 20)
        }
    }
    
    static func body(_ style: Body) -> Font {
        switch style {
        case .body1b16: return wantedSansFont(weight: .wantedSansdBold, ofSize: 16)
        case .body1m16: return wantedSansFont(weight: .wantedSansMedium, ofSize: 16)
        case .body2b14: return wantedSansFont(weight: .wantedSansdBold, ofSize: 14)
        case .body2m14: return wantedSansFont(weight: .wantedSansMedium, ofSize: 14)
        }
    }
    
    static func button(_ style: Button) -> Font {
        switch style {
        case .button1m20: return wantedSansFont(weight: .wantedSansMedium, ofSize: 20)
        case .button2m16: return wantedSansFont(weight: .wantedSansMedium, ofSize: 16)
        }
    }
        
    static func caption(_ style: Caption) -> Font {
        switch style {
        case .caption1m16: return wantedSansFont(weight: .wantedSansMedium, ofSize: 16)
        case .caption2m12: return wantedSansFont(weight: .wantedSansMedium, ofSize: 12)
        }
    }
}
