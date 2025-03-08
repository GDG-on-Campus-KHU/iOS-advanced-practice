//
//  TitleView.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/24/25.
//

import SwiftUI

struct TitleView: View {
    let title: String
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                    .frame(width: 28)
                
                Text(title)
                    .font(.wantedSansBold(ofSize: 16))
                    .frame(height: 19, alignment: .leading)
                    .foregroundStyle(Color(.gray8))
                
                Spacer()
            }
            
            Spacer()
                .frame(height: 12)
        }
    }
}
