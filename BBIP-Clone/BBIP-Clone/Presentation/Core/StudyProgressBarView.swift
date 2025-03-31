//
//  ProgressBarView.swift
//  BBIP-Clone
//
//  Created by HanJW on 3/16/25.
//

import SwiftUI

struct StudyProgressBarView: View {
    private let currentRound: Int = 8
    private let totalRounds: Int = 16
    private let studyPeriod: String = "(2024.08.19~2024.12.09)"
    private let cellWidth: CGFloat = UIScreen.main.bounds.width - 34
    private let progressBarWidth: CGFloat = UIScreen.main.bounds.width - 60
    
    @State private var currentProgress: CGFloat = 0
    
    private var progress: CGFloat {
        CGFloat(currentRound) / CGFloat(totalRounds)
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: cellWidth, height: 78)
                .foregroundStyle(Color(.mainWhite))
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
            
            VStack(alignment: .leading) {
                // MARK: - Header Text
                HStack(spacing: 0) {
                    Spacer()
                        .frame(width: 2)
                    
                    Text("\(currentRound)R")
                        .font(.wantedSansSemiBold(ofSize: 20))
                        .foregroundStyle(Color(.mainBlack))
                    
                    Text(" / \(totalRounds)R")
                        .font(.wantedSansSemiBold(ofSize: 20))
                        .foregroundStyle(Color(.gray5))
                    
                    Spacer()
                    
                    Text("\(studyPeriod)")
                        .font(.wantedSansMedium(ofSize: 12))
                        .foregroundStyle(Color(.gray5))
                }
                .padding(.horizontal, 3)
                
                // MARK: - Progress Bar
                ProgressBarView(progress: currentProgress, width: progressBarWidth)
            }
            .padding(.horizontal, 30)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.4)) {
                currentProgress = progress
            }
        }
    }
}

fileprivate struct ProgressBarView: View {
    let progress: CGFloat
    let width: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 15)
                .frame(height: 7)
                .foregroundStyle(Color(.gray2))
            
            ZStack(alignment: .trailing) {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: progress * width, height: 7)
                    .foregroundStyle(Color(.primary3))
                
                Circle()
                    .frame(width: 12, height: 12)
                    .foregroundStyle(Color(.primary3))
                    .offset(x: 6)
            }
            .frame(width: progress * width, alignment: .leading)
        }
        .frame(width: width)
    }
}
