//
//  Weeklyview.swift
//  BBIP-Clone
//
//  Created by 박현빈 on 3/9/25.
//

import SwiftUI

struct WeeklyItem: Identifiable {
    let id = UUID()
    let circlebackground: Color
    let circlewrite: Color
    let round: String
    let descriptioncolor : Color
    let description: String
}




struct WeeklyView: View {
    
    let Weekly: [WeeklyItem] = [
        WeeklyItem(circlebackground: Color.primary3, circlewrite: Color.mainWhite, round: "8", descriptioncolor: Color.gray5, description: "입력된 주차 계획이 없어요"),
        WeeklyItem(circlebackground: Color.gray5, circlewrite: Color.mainBlack, round: "9", descriptioncolor: Color.mainBlack, description: "우뱌뱌뱌ㅑ뱌뱝뱌뱌ㅑ뱌뱌뱌뱌뱌뱌뱌뱌뱌뱌뱌뱌뱌뱌뱌뱌뱌ㅑ뱌")
    ]
    
    
    
    var body: some View {
//        VStack(alignment: .leading, spacing:5) {
//            HStack() {
//                Text("주차별활동")
//                    .font(.wantedSansBold(ofSize: 16))
//                    .foregroundStyle(Color.gray8)
//                
//                Spacer() // 왼쪽과 오른쪽 사이에 공간 추가
//                
//                Text("전체보기")
//                    .font(.wantedSansMedium(ofSize: 14))
//                    .foregroundStyle(Color.gray7)
//                Image("arrow")
//            }
//            .padding(.horizontal)
//            .frame(width: 400, alignment: .leading)
//            
            
            VStack(spacing:10) {
                ForEach(Weekly.prefix(2)) { Week in
                    WeeklyCard(Week: Week)
                }
            }
            .padding(.horizontal)
            .frame(height: 200) // 3개까지만 보이도록 제한
        }
    
}



struct WeeklyCard: View {
    let Week: WeeklyItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            HStack(spacing: 20) {
                Text(Week.round)
                    .foregroundStyle(Week.circlewrite)
                    .font(.wantedSansMedium(ofSize: 16))
                    //.padding(10)
                    .background(
                        Circle()
                            .fill(Week.circlebackground)
                            .frame(width: 36,height: 36)
                    )
                    .padding(10)
                VStack(alignment: .leading, spacing: 5){
                    Text(Week.description)
                        .foregroundStyle(Week.descriptioncolor)
                        .font(.wantedSansMedium(ofSize: 16))
                    Text("9월 29일 (일)")
                        .foregroundStyle(Color.gray6)
                        .font(.wantedSansMedium(ofSize: 12))
                }
            }
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.mainWhite)
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}

#Preview {
    WeeklyView()
}
