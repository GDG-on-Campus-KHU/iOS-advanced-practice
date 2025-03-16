//
//  ProgressBarView.swift
//  BBIP-Clone
//
//  Created by HanJW on 3/16/25.
//

import SwiftUI

struct ProgressBarView: View {
    private let currentRound: Int = 8
    private let totalRounds: Int = 16
    private let studyPeriod: String = "(2024.08.19~2024.12.09)"
    
    @State private var showAttendanceConfirmation = false
    @State private var showLocationDetails = false
    @State private var showArchiveOptions = false
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                Rectangle()
                    .foregroundStyle(Color(.mainWhite))
                    .frame(width: UIScreen.main.bounds.width - 34, height: 78)
                    .cornerRadius(12)
                
                VStack {
                    HStack {
                        Text("\(currentRound)R /"+" ")
                            .font(.wantedSansMedium(ofSize: 20))
                            .foregroundStyle(Color(.mainBlack))
                        
                        Text("\(totalRounds)R")
                            .font(.wantedSansMedium(ofSize: 20))
                            .foregroundStyle(Color(.gray5))
                        
                        Spacer()
                        
                        Text("(2024.08.19~2024.12.09)")
                            .font(.wantedSansMedium(ofSize: 12))
                            .foregroundStyle(Color(.gray5))
                        
                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width - 60, height: 7)
                            .foregroundStyle(Color(.gray2))
                            .cornerRadius(3)
                        
                        Rectangle()
                            .frame(width: (UIScreen.main.bounds.width) - 60 * CGFloat(currentRound) / CGFloat(totalRounds), height: 6)
                            .foregroundStyle(Color(.primary3))
                            .cornerRadius(3)
                    }
                }
                .padding(.horizontal, 13)
            }
        }
        .frame(height: 6)
    }
}
