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
        
        
        ZStack{
            Circle()
                .foregroundStyle(Color.primary3)
                .frame(width: 280, height: 280)
                .offset(y:-33)
            
            
            ZStack(alignment: .bottom) {
                GeometryReader { geometry in
                    let radius = (geometry.size.width - 18 * 2) / 2
                    let angle = Angle(degrees: progress * 360 - 90)
                    let xOffset = cos(angle.radians) * radius
                    let yOffset = sin(angle.radians) * radius
                    
                    ZStack {
                        
                        Circle()
                            .foregroundStyle(Color.primary3)
                        //.frame(width: 273, height: 273)
                        
                        // 진행 바 (원형 프로그레스)
                        Circle()
                            .stroke(
                                .gray4,
                                style: StrokeStyle(lineWidth: lineWidth, lineCap: .round)
                            )
                        
                        Circle()
                            .trim(from: 0, to: progress)
                            .stroke(
                                Color.mainWhite,
                                style: StrokeStyle(lineWidth: lineWidth, lineCap: .round)
                            )
                            .rotationEffect(Angle(degrees: -90))
                            .animation(.linear, value: progress)
                        
                        // 진행 지점 표시 원
                        Circle()
                            .foregroundStyle(.mainWhite)
                            .frame(width: endCircleSize, height: endCircleSize)
                            .offset(x: xOffset, y: yOffset)
                            .animation(.easeIn, value: progress)
                        
                        
                        // 중심 내용
                        VStack(spacing: 10) {
                            Text("TOEIC / IELTS")
                                .font(.wantedSansBold(ofSize: 20))
                                .foregroundStyle(Color.mainWhite)
                            
                            Text("09:53")
                                .font(.wantedSansBold(ofSize: 42))
                                .foregroundStyle(Color.mainWhite)
                            
                        }
                    }
                    .padding(18)
                }
                
                // 출석 버튼
                Image("timeRingStick_enable")
                    .offset(x:45, y:-20)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color.primary3)
                    .frame(width: 130, height: 43)
                    .overlay {
                        Text("출석인증")
                            .font(.wantedSansSemiBold(ofSize: 14))
                            .foregroundStyle(Color.mainWhite)
                    }
                
            }
            .frame(height: (UIScreen.main.bounds.width - 120) + 43 + 24)
            .padding(.horizontal, 60)
        }
    }
}

struct TimeRingView_Previews: PreviewProvider {
    static var previews: some View {
        TimeRingView()
            // 배경 설정
    }
}
