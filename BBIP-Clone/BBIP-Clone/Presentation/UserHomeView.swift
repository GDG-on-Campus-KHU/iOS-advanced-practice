//
//  UserHomeView.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/13/25.
//

import SwiftUI

private var cardsBoard = [
    (title: "포트폴리오 스터디", content: "오늘 스터디는 강서구 카페 베네에서 진행합니달라", timeDifference: 1),
    (title: "JLPT N2 청해 스터디", content: "이거 문제 어우에에ㅜㅇㅇ 못 풀겠져엉 오ㅜㅇ애", timeDifference: 24),
    (title: "JLPT N2 청해 스터디", content: "이거 문제 어우에에ㅜㅇㅇ 못 풀겠져엉 오ㅜㅇ애.", timeDifference: 999999999999)
]

private var cardsSchedule = [
    (iconImage: "ic_circular_gloves", dDay: (year: 2025, month: 3, day: 22), scheduleTitle: "JLPT N2 접수"),
    (iconImage: "ic_circular_keyboard", dDay: (year: 2025, month: 3, day: 30), scheduleTitle: "포트폴리오"),
    (iconImage: "ic_circular_pen", dDay: (year: 2025, month: 2, day: 28), scheduleTitle: "3차 모고")
]

struct UserHomeView: View {
    var body: some View {
        ZStack {
            Color(UIColor.systemGray6)
            
            VStack {
                //MARK: - "게시판"
              
                TimeRingView()
                
                HStack {
                    TitleView(title: "게시판")
                    
                    TitleButtonView()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        Spacer()
                            .frame(width: 17)
                        
                        ForEach(cardsBoard.indices, id: \.self) { index in
                            let card = cardsBoard[index]
                            
                            BoardCardView(
                                title: card.title,
                                content: card.content,
                                timeDifference: card.timeDifference
                            )
                        }
                        
                        Spacer()
                            .frame(width: 17)
                    }
                }
                
                Spacer()
                    .frame(height: 23)
                
                //MARK: - "이번 주 스터디"
                TitleView(title: "이번 주 스터디")
                
                Spacer()
                    .frame(height: 32)
                
                // MARK: - "다가오는 일정"
                TitleView(title: "다가오는 일정")
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        Spacer()
                            .frame(width: 17)
                        
                        ForEach(cardsSchedule.indices, id: \.self) { index in
                            let card = cardsSchedule[index]
                            
                            ScheduleCardView(iconImage: card.iconImage, dDay: card.dDay, scheduleTitle: card.scheduleTitle
                            )
                        }
                        
                        Spacer()
                            .frame(width: 17)
                    }
                }
                
                Spacer()
                    .frame(height: 32)
                
                //MARK: - "BBIP 이용 가이드"
                
            }
            .ignoresSafeArea()
        }
    }
}

//#Preview {
//    UserHomeView()
//}
