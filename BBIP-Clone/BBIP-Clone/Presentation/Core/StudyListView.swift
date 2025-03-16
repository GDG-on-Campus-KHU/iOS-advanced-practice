//
//  StudyListView.swift
//  BBIP-Clone
//
//  Created by 박현빈 on 3/9/25.
//



import SwiftUI

struct StudyItem: Identifiable {
    let id = UUID()
    let title: String
    let round: String
    let description: String
    let date: String
    let location: String
}

struct StudyListView: View {
    let studies: [StudyItem] = [
        StudyItem(title: "JLPT N2 청해 스터디", round: "6R", description: "단어 시험, 교재 300~320p", date: "8월 13일 / 12:00 ~ 15:00", location: "미정"),
        StudyItem(title: "JLPT N2 청해 스터디", round: "8R", description: "2차 과제 제출 확인 및 피드백", date: "8월 9일 / 15:00 ~ 18:00", location: "비대면(디코)"),
        StudyItem(title: "JLPT N2 청해 스터디", round: "3R", description: "단어 시험, 교재 300~320p", date: "8월 14일 / 12:00 ~ 18:00", location: "스타벅스 강남역점")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("이번 주 스터디")
                .font(.wantedSansSemiBold(ofSize: 16))
                .padding(.horizontal)
                .foregroundStyle(Color.mainBlack)

            ScrollView {
                VStack(spacing: 10) {
                    ForEach(studies.prefix(3)) { study in
                        StudyCard(study: study)
                    }
                }
                .padding(.horizontal)
            }
            .frame(height: 420) // 3개까지만 보이도록 제한
        }
    }
}

struct StudyCard: View {
    let study: StudyItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                Image("Ellipse 16")
                    .resizable()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(study.title)
                        .font(.wantedSansBold(ofSize: 16))
                        .foregroundStyle(Color.mainBlack)
                    HStack{
                        Text("\(study.round)")
                            .font(.wantedSansBold(ofSize: 14))
                            .foregroundColor(.primary3)
                        Text("\(study.description)")
                            .font(.wantedSansMedium(ofSize: 14))
                            .foregroundColor(.mainBlack)
                        
                    }
                }
                .offset(x:8)
                Spacer()
                //28
                Text("어학")
                    .foregroundStyle(Color.gray8)
                    .font(.wantedSansMedium(ofSize: 12))
                    .padding(6)
                    .background{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(Color.gray2)
                            .frame(width: 37, height: 24)
                    }
                    //.clipShape(Capsule())
                    .offset(y:-10)
            }
            
            Divider()
            
            HStack {
                Image("ic_cal_gray")
                    .resizable()
                    .frame(width: 14, height: 16)
                    //.font(.system(size: 12))
                Text(study.date)
                    .font(.wantedSansMedium(ofSize: 12))
                    .foregroundStyle(Color.gray7)
                    //.padding(.trailing, 20)
                    .frame(width: 150, alignment: .leading)
                
                Image("ic_home_gray")
                    .resizable()
                    .frame(width: 14, height: 16)
                Text(study.location)
                    .font(.wantedSansMedium(ofSize: 12))
                    .foregroundStyle(Color.gray7)
            }
            
        }
        .padding()
        .background(Color.mainWhite)
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}



#Preview {
    StudyListView()
}

