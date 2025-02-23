//
//  UserHomeView.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/13/25.
//

import SwiftUI

struct UserHomeView: View {
    var body: some View {
        HStack {
            TitleView(title: "게시판")
            
            TitleButtonView()
        }
    }
}

#Preview {
    UserHomeView()
}
