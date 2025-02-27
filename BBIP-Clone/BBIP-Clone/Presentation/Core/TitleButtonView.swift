//
//  TitleButtonView.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/24/25.
//

import SwiftUI

struct TitleButtonView: View {
    var body: some View {
        HStack {
            Spacer()
            
            Text("전체보기")
                .font(.wantedSansMedium(ofSize: 14))
            //color 수정 필요
                .foregroundColor(.gray)
            
            Spacer()
                .frame(width: 4)
            
            Image("arrow")
                .frame(width: 12, height: 12)
            
            Spacer()
                .frame(width: 20)
        }
    }
}

#Preview {
    TitleButtonView()
}
