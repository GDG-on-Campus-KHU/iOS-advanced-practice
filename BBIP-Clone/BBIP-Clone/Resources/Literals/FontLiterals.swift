//
//  FontLiterals.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/12/25.
//

import SwiftUI

enum FontName: String {
    case wantedSansdBold = "WantedSansStd-Bold"
    case wantedSansdSemiBold = "WantedSansStd-SemiBold"
    case wantedSansMedium = "WantedSansStd-Medium"
}

extension Font {
    static func wantedSansBold(ofSize fontSize: CGFloat) -> Font {
        return Font.custom(FontName.wantedSansdBold.rawValue, size: fontSize)
    }
    
    static func wantedSansSemiBold(ofSize fontSize: CGFloat) -> Font {
        return Font.custom(FontName.wantedSansdSemiBold.rawValue, size: fontSize)
    }
    
    static func wantedSansMedium(ofSize fontSize: CGFloat) -> Font {
        return Font.custom(FontName.wantedSansMedium.rawValue, size: fontSize)
    }
}
