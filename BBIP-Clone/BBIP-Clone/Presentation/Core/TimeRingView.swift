//
//  TimeRingView.swift
//  BBIP-Clone
//
//  Created by 박현빈 on 3/8/25.
//

import SwiftUI

struct TimeRingView: View {
    private var progress: Double = 0.75 // 75% 진행된 상태 (예제 데이터)
    
    private var lineWidth: CGFloat = 8
    private var endCircleSize: CGFloat = 18
    
    var body: some View {
        ZStack(alignment: .bottom) {
            GeometryReader { geometry in
                let radius = (geometry.size.width - 18 * 2) / 2
                let angle = Angle(degrees: progress * 360 - 90)
                let xOffset = cos(angle.radians) * radius
                let yOffset = sin(angle.radians) * radius
                
                ZStack {
                    Circle()
                        .foregroundStyle(.gray.opacity(0.2))
                    
                    // 진행 바 (원형 프로그레스)
                    Circle()
                        .stroke(
                            .black.opacity(0.4),
                            style: StrokeStyle(lineWidth: lineWidth, lineCap: .round)
                        )
                    
                    Circle()
                        .trim(from: 0, to: progress)
                        .stroke(
                            Color.red,
                            style: StrokeStyle(lineWidth: lineWidth, lineCap: .round)
                        )
                        .rotationEffect(Angle(degrees: -90))
                        .animation(.linear, value: progress)
                    
                    // 진행 지점 표시 원
                    Circle()
                        .foregroundStyle(.red)
                        .frame(width: endCircleSize, height: endCircleSize)
                        .offset(x: xOffset, y: yOffset)
                        .animation(.easeIn, value: progress)
             
                
                // 중심 내용
                    VStack(spacing: 10) {
                        Text("TOEIC / IELTS")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Text("09:53")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.black)
                    }
                }
                .padding(18)
            }
            
            // 출석 버튼
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.gray.opacity(0.3))
                .frame(width: 130, height: 43)
                .overlay {
                    Text("출석인증")
                        .font(.body)
                        .bold()
                        .foregroundStyle(.white)
                }
        }
        .frame(height: (UIScreen.main.bounds.width - 120) + 43 + 24)
        .padding(.horizontal, 60)
    }
}

struct TimeRingView_Previews: PreviewProvider {
    static var previews: some View {
        TimeRingView()
            // 배경 설정
    }
}
