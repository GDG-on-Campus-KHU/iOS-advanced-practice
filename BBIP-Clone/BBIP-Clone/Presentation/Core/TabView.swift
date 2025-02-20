//
//  TabView.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/20/25.
//

import SwiftUI

struct TabView: View {
    @StateObject private var tabViewModel = TabViewModel()
    
    var body: some View {
        VStack {
            Image("group_red")
            
            ZStack {
                SwiftUI.TabView(selection: $tabViewModel.selectedTab) {
                    UserHomeView()
                        .tabItem {
                            Image(
                                tabViewModel.selectedTab == .userHome
                                ? "ic_home_black"
                                : "ic_home_gray")
                        }
                        .tag(Tab.userHome)
                    
                    StudyHomeView()
                        .tabItem {
                            Image(
                                tabViewModel.selectedTab == .studyHome
                                ? "ic_cal_black"
                                : "ic_cal_gray")
                        }
                        .tag(Tab.studyHome)
                }
                
                //Divider
                
            }
        }
    }
}

#Preview {
    TabView()
}
