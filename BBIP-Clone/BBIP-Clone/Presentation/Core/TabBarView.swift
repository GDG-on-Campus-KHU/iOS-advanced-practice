//
//  TabBarView.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/20/25.
//

import SwiftUI

struct TabBarView: View {
    @StateObject private var tabBarViewModel = TabBarViewModel()
    
    var body: some View {
        VStack {
            ZStack {
                TabView(selection: $tabBarViewModel.selectedTab) {
                    UserHomeView()
                        .tabItem {
                            Image(
                                tabBarViewModel.selectedTab == .userHome
                                ? "ic_home_black"
                                : "ic_home_gray")
                        }
                        .tag(Tab.userHome)
                    
                    StudyHomeView()
                        .tabItem {
                            Image(
                                tabBarViewModel.selectedTab == .studyHome
                                ? "ic_cal_black"
                                : "ic_cal_gray")
                        }
                        .tag(Tab.studyHome)
                }
                
                DividerView()
            }
        }
    }
}

// MARK: - Divider
private struct DividerView: View {
    fileprivate var body: some View {
        VStack {
            Spacer()
            
            Image("group_red")
                .shadow(radius: 10, x: 0, y: 0)
//                .blur(radius: 11)
//                .opacity(0.15)
                .offset(y: 34)
            
            Image("tabBar")
                .edgesIgnoringSafeArea(.bottom)
                .frame(maxWidth: .infinity)
                .shadow(radius: 15, x: 0, y: -2)
//                .blur(radius: 18.7)
                .opacity(0.15)
        }
    }
}

#Preview {
    TabBarView()
}
