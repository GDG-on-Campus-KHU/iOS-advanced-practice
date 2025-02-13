//
//  TabBarController.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/13/25.
//

import SwiftUI

struct TabBarController: View {
    var body: some View {
        TabView {
            Text("The First Tab")
                .tabItem {
                    Image("ic_home_black")
                }
            Text("The Second Tab")
                .tabItem {
                    Image("ic_cal_gray")
                }
        }
    }
}

#Preview {
    TabBarController()
}
