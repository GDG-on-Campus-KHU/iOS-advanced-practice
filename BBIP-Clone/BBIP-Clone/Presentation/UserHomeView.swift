//
//  UserHomeView.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/13/25.
//

import SwiftUI

private var cardsBoard = [
    (title: "포트폴리오 스터디", content: "오늘 스터디는 강서구 카페 베네에서 진행합니달라오늘 스터디는 강서구 카페 베네에서 진행합니달라", timeDifference: 1),
    (title: "JLPT N2 청해 스터디", content: "이거 문제 어우에에ㅜㅇㅇ 못 풀겠져엉 오ㅜㅇ애이거 문제 어우에에ㅜㅇㅇ 못 풀겠져엉 오ㅜㅇ애", timeDifference: 24),
    (title: "JLPT N2 청해 스터디", content: "이거 문제 어우에에ㅜㅇㅇ 못 풀겠져엉 오ㅜㅇ애.", timeDifference: 999999999999)
]

private var cardsSchedule = [
    (imgName: "ic_circular_gloves", dDay: (year: 2025, month: 3, day: 22), scheduleTitle: "JLPT N2 접수"),
    (imgName: "ic_circular_keyboard", dDay: (year: 2025, month: 3, day: 30), scheduleTitle: "포트폴리오"),
    (imgName: "ic_circular_pen", dDay: (year: 2025, month: 2, day: 28), scheduleTitle: "3차 모고")
]

struct UserHomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                //MARK: - Header
                
                //MARK: - Time Ring
                TimeRingView()
                
                //MARK: - "게시판"
                HStack {
                    TitleView(title: "게시판")
                  
        ZStack(alignment: .top) {
            Color.mainWhite
                .frame(height: 130)
                .edgesIgnoringSafeArea(.top)

            VStack(spacing: 0) {
                // 상단 고정 헤더
    
                HStack{
                    Text("홈")
                        .font(.wantedSansSemiBold(ofSize:22))
                        .foregroundStyle(Color.mainBlack)
                        .offset(x:-130)
                    //.frame(maxWidth: .infinity)
                        .padding()
                    //.background(Color.mainWhite)
                    
                    Image("notice_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 25)
                        .offset(x:110)
                        .overlay(
                            Circle()
                                .fill(.primary3)
                                .offset(x:110)
                                .frame(width: 4, height: 4),
                            alignment: .topTrailing
                        )
                    
                    Image("profile_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 25)
                        .offset(x:110)                    
                }
            
           
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        ForEach(cardsBoard.indices, id: \.self) { index in
                            let card = cardsBoard[index]
                
                ScrollView {
                    VStack {
                        //MARK: - "공지"
                        NoticeView(title: "다음주 스터디 하루 쉬어갑니다! 확인 해주세요...!", type: .gray2_gray8)
                            .padding()
                        
                        
                        
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
                        ForEach(cardsSchedule.indices, id: \.self) { index in
                            let card = cardsSchedule[index]
                            
                            ScheduleCardView(
                                imgName: card.imgName,
                                dDay: card.dDay,
                                scheduleTitle: card.scheduleTitle
                            )
                        }
                        
                        Spacer()
                            .frame(height: 43)
                        
                        //MARK: - "이번 주 스터디"
                        //TitleView(title: "이번 주 스터디")
                        StudyListView()
                        
                        
                        
                        
                        
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
                        GuideView()
                        
                        
                    }
                    .ignoresSafeArea()
                }
                .background(Color(.gray1))
                .scrollIndicators(.never)
            }
            .ignoresSafeArea()
            .padding(.horizontal, 17)
        }
    }
}
#Preview {
    UserHomeView()
}
