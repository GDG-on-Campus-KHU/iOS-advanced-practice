//
//  TitleButtonView.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/24/25.
//

import SwiftUI

struct TitleButtonView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Text("전체보기")
                    .font(.wantedSansMedium(ofSize: 14))
                    .foregroundStyle(Color(.gray7))
                
                Spacer()
                    .frame(width: 4)
                
                Image("arrow")
                    .frame(width: 12, height: 12)
            }
            
            Spacer()
                .frame(height: 12)
        }
        .padding(.horizontal, 17)
    }
}
