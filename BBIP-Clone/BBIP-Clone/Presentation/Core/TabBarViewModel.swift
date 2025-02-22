//
//  TabBarViewModel.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/20/25.
//

import SwiftUI

enum Tab {
    case userHome
    case studyHome
}

class TabBarViewModel: ObservableObject {
    @Published var selectedTab: Tab
    @Published var userHomeCount: Int
    @Published var studyHomeCount: Int
    
    init(
        selectedTab: Tab = .userHome,
        userHomeCount: Int = 0,
        studyHomeCount: Int = 0
    ) {
        self.selectedTab = selectedTab
        self.userHomeCount = userHomeCount
        self.studyHomeCount = studyHomeCount
    }
}

extension TabBarViewModel {
    func setUserHome(_ count: Int) {
        userHomeCount = count
    }
    
    func setStudyHome(_ count: Int) {
        studyHomeCount = count
    }
    
    func changeSelectedTab(_ tab: Tab) {
        selectedTab = tab
    }
}
