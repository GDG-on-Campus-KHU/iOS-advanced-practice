//
//  CapsuleView.swift
//  BBIP-Clone
//
//  Created by 박현빈 on 3/8/25.
//
import SwiftUI

enum capsuletype{
    case white_red
    case white_gray
    case gray_gray
    case red_white
    
    var backgroundColor: Color {
        switch self {
        case .white_red: return Color.mainWhite
        case .white_gray: return Color.mainWhite
        case .gray_gray: return Color.gray2
        case .red_white: return Color.primary3
        }
    }
    
    var textColor: Color {
        switch self {
        case .white_red: return Color.primary3
        case .white_gray: return Color.gray7
        case .gray_gray: return Color.gray8
        case .red_white: return Color.mainWhite
        }
    }
    
    var hasBorder: Bool {
            switch self {
            case .gray_gray, .red_white: return false
            default: return true
            }
        }
    
    
}

struct CapsuleView: View {
    let title: String
    let type: capsuletype
    
    var body: some View {
        
        Text(title)
            .font(.system(size: 16, weight: .bold))
            .foregroundColor(type.textColor)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
        
            .clipShape(Capsule())
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(type.backgroundColor))
            .overlay(
                type.hasBorder ? RoundedRectangle(cornerRadius: 10)
                                   .stroke(type.textColor, lineWidth: 1)
                                   .eraseToAnyView() : EmptyView().eraseToAnyView()
            )
        
    }
}

extension View {
    func eraseToAnyView() -> AnyView {
        AnyView(self)
    }
}
    


#Preview {
    CapsuleView(title: "asdf", type: .white_red)
    CapsuleView(title: "asdf", type: .white_gray)
    CapsuleView(title: "asdf", type: .gray_gray)
    CapsuleView(title: "asdf", type: .red_white)
}
