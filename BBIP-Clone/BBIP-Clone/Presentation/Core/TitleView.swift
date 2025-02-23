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
        HStack {
            Text(title)
                .font(.body(.body1b16))
                .frame(height: 19, alignment: .leading)
            
            Spacer()
        }
        .padding(.horizontal, 19)
    }
}
