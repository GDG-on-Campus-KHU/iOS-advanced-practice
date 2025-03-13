//
//  StudyDetailView.swift
//  BBIP-Clone
//
//  Created by HanJW on 3/10/25.
//

import SwiftUI

struct StudyDetailView: View {
    var body: some View {
        ZStack {
            //MARK: - Upper Background Color(gray9)
            VStack {
                Rectangle()
                    .fill(Color(.gray9))
                    .frame(maxWidth: .infinity)
                    .frame(height: 417)
                
                Spacer()
            }
            
            VStack {
                Spacer()
                    .frame(height: 54)
                
                // MARK: - Header
                HStack {
                    Spacer()
                        .frame(width: 20)
                    
                    Text("TOEIC / IELTS 스터디")
                        .font(.wantedSansSemiBold(ofSize: 24))
                        .foregroundStyle(Color(.mainWhite))
                    
                    Spacer()
                    
                    Image("ic_dots")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Spacer()
                        .frame(width: 28)
                }
                .frame(height: 42)
                
                Spacer()
                    .frame(height: 12)
                
                // MARK: - NoticeView
                NoticeView(title: "등록된 공지가 없어요", type: .gray8_gray6)
                
                Spacer()
                    .frame(height: 18)
                
                // MARK: - Study Overview
                // Overview Title
                HStack {
                    Spacer()
                        .frame(width: 20)
                    
                    //CapsuleView로 변경
                    Text("8"+"R")
                        .font(.wantedSansMedium(ofSize: 12))
                        .foregroundColor(Color(.mainWhite))
                        .padding(.horizontal, 8)
                        .padding(.vertical, 6)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.primary3))
                            )
                    
                    Spacer()
                        .frame(width: 10)
                    
                    Text("2차 과제 제출 확인 및 피드백우뱌뱌뱌뱝...")
                        .font(.wantedSansMedium(ofSize: 14))
                        .foregroundStyle(Color(.gray1))
                        .frame(maxWidth: 231)
                    
                    Spacer()
                }
                .frame(height: 24)
                
                Spacer()
                    .frame(height: 13)
                
                //Overview Contents
                HStack {
                    Spacer()
                        .frame(width: 20)
                    
                    Image("ic_cal_gray6")
                        .resizable()
                        .frame(width: 16.46, height: 16)
                    
                    Spacer()
                        .frame(width: 9)
                    
                    Text("8월 14일 (수) / 12:00 ~ 18:00")
                        .font(.wantedSansMedium(ofSize: 12))
                        .foregroundStyle(Color(.gray2))
                        .frame(maxWidth: 151)
                    
                    Spacer()
                }
                .frame(height: 16)
                
                Spacer()
                    .frame(height: 9)
                
                HStack {
                    Spacer()
                        .frame(width: 20)
                    
                    Image("ic_home_gray6")
                        .resizable()
                        .frame(width: 16.46, height: 16)
                    
                    Spacer()
                        .frame(width: 9)
                    
                    Text("스타벅스 강남역nnnnnnnnn...")
                        .font(.wantedSansMedium(ofSize: 12))
                        .foregroundStyle(Color(.gray2))
                        .frame(maxWidth: 151)
                        .lineLimit(1)
                    
                    Spacer()
                }
                .frame(height: 16)

                // MARK: - 3 Buttons
                
                
                Spacer()
            }
            
            // MARK: - Boxing Ring Image
            VStack {
                Spacer()
                    .frame(height: 224)
                
                HStack {
                    Spacer()
                    
                    Image("img_ring")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 302, height: 230)
                }
                
                Spacer()
            }
        }
    }
}
