//
//  MemberCardView.swift
//  BBIP-Clone
//
//  Created by HanJW on 3/8/25.
//

import SwiftUI

struct MemberCardView: View {
    private let iconImage: String
    private let name: String
    private let position: String
    
    init(
        iconImage: String,
        name: String,
        position: String
    ) {
        self.iconImage = iconImage
        self.name = name
        self.position = position
    }
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 13)
            
            Image(iconImage)
                .resizable()
                .frame(width: 40, height: 40)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            
            Spacer()
                .frame(height: 5)
            
            Text(name)
                .font(.wantedSansMedium(ofSize: 14))
                .foregroundStyle(Color(.mainBlack))
            
            Spacer()
                .frame(height: 1)
            
            Text(position)
                .font(.wantedSansMedium(ofSize: 12))
                .foregroundStyle(Color(.gray6))
            
            Spacer()
                .frame(height: 8)
        }
        .frame(width: 90, height: 100)
        .background(Color.mainWhite)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

struct AddMemberButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack {
                Spacer()
                    .frame(height: 24)
                
                Image("ic_circular_plus")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                
                Spacer()
                    .frame(height: 9)
                
                Text("초대하기")
                    .font(.wantedSansMedium(ofSize: 14))
                    .foregroundStyle(Color(.gray7))
                
                Spacer()
                    .frame(height: 18)
            }
            .frame(width: 90, height: 100)
            .background(Color(.gray3))
            .cornerRadius(12)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
        }
    }
}
