//
//  StudyHomeView.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/20/25.
//

import SwiftUI

private var cardsBoard = [
    (title: "포트폴리오 스터디", content: "오늘 스터디는 강서구 카페 베네에서 진행합니달라오늘 스터디는 강서구 카페 베네에서 진행합니달라", timeDifference: 1),
    (title: "JLPT N2 청해 스터디", content: "이거 문제 어우에에ㅜㅇㅇ 못 풀겠져엉 오ㅜㅇ애이거 문제 어우에에ㅜㅇㅇ 못 풀겠져엉 오ㅜㅇ애", timeDifference: 24),
    (title: "JLPT N2 청해 스터디", content: "이거 문제 어우에에ㅜㅇㅇ 못 풀겠져엉 오ㅜㅇ애.", timeDifference: 999999999999)
]

private var cardsMember = [
    (imgName: "2dubu", name: "2dubu", position: "팀장"),
    (imgName: "binschocolate", name: "Bins", position: "팀원"),
    (imgName: "Gardeniaa101", name: "Grdn", position: "팀원")
]

struct StudyHomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                //MARK: - Study Home Main
                
                StudyDetailView()
                
                Spacer()
                    .frame(height: 27)
                
                VStack {
                    //MARK: - "스터디 진척도"
                    TitleView(title: "스터디 진척도")
                    
                    //ProgressBarView()
                    
                    Spacer()
                        .frame(height: 23)
                    
                    //MARK: - "주차별 활동"
                    HStack {
                        TitleView(title: "주차별 활동")
                        
                        TitleButtonView()
                    }
                    
                    Spacer()
                        .frame(height: 23)
                    
                    // MARK: - "게시판"
                    HStack {
                        TitleView(title: "게시판")
                        
                        TitleButtonView()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            ForEach(cardsBoard.indices, id: \.self) { index in
                                let card = cardsBoard[index]
                                
                                BoardCardView(
                                    title: card.title,
                                    content: card.content,
                                    timeDifference: card.timeDifference
                                )
                            }
                        }
                    }
                    
                    Spacer()
                        .frame(height: 23)
                    
                    //MARK: - "스터디원"
                    TitleView(title: "스터디원")
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            ForEach(cardsMember.indices, id: \.self) { index in
                                let card = cardsMember[index]
                                
                                MemberCardView(
                                    imgName: card.imgName,
                                    name: card.name,
                                    position: card.position
                                )
                            }
                            
                            AddMemberButton {
                                // "초대하기" 기능
                                print("Add new member tapped")
                            }
                        }
                    }
                }
                .padding(.horizontal, 17)
            }
            
        }
        .ignoresSafeArea()
        .background(Color(.gray1))
        .scrollIndicators(.never)
    }
}
