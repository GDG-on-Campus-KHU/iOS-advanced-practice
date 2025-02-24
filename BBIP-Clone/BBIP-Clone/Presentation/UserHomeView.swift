//
//  UserHomeView.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/13/25.
//

import SwiftUI

private var cards = [
    (title: "포트폴리오 스터디", content: "오늘 스터디는 강서구 카페 베네에서 진행합니다~", timeDifference: 1),
    (title: "JLPT N2 청해 스터디", content: "이거 문제 어우에에ㅜㅇㅇ 못 풀겠져엉 오ㅜㅇ애...", timeDifference: 24),
    (title: "JLPT N2 청해 스터디", content: "이거 문제 어우에에ㅜㅇㅇ 못 풀겠져엉 오ㅜㅇ애...", timeDifference: 999999999999)
]

struct UserHomeView: View {
    var body: some View {
        ZStack {
            Color(UIColor.systemGray6)
            
            VStack {
                HStack {
                    TitleView(title: "게시판")
                    
                    TitleButtonView()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        Spacer()
                            .frame(width: 17)
                        
                        ForEach(cards.indices, id: \.self) { index in
                            let card = cards[index]
                            
                            ScrollBoardView(
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
        .ignoresSafeArea()
    }
}

#Preview {
    UserHomeView()
}
