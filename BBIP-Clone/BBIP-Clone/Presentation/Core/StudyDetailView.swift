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
                    Text("TOEIC / IELTS 스터디")
                        .font(.wantedSansSemiBold(ofSize: 24))
                        .foregroundStyle(Color(.mainWhite))
                    
                    Spacer()
                    
                    Image("ic_dots")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                .frame(height: 42)
                .padding(.horizontal, 12)
                
                Spacer()
                    .frame(height: 12)
                
                // MARK: - Notice View
                //NoticeView로 변경
                Capsule()
                    .fill(Color(.gray8))
                    .frame(height: 40)
                
                Spacer()
                    .frame(height: 18)
                
                // MARK: - Study Overview
                // Overview - Title
                HStack {
                    //CapsuleView로 변경
                    Text("8"+"R")
                        .font(.wantedSansMedium(ofSize: 12))
                        .foregroundColor(Color(.mainWhite))
                        .padding(.horizontal, 8)
                        .padding(.vertical, 5)
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
                
                //Overview - Schedule
                HStack {
                    Image("ic_cal_gray6")
                        .resizable()
                        .frame(width: 16.46, height: 16)
                    
                    Spacer()
                        .frame(width: 9)
                    
                    Text("8월 14일 (수) / 12:00 ~ 18:00")
                        .font(.wantedSansMedium(ofSize: 12))
                        .foregroundStyle(Color(.gray2))
                        .frame(maxWidth: 151, alignment: .leading)
                    
                    Spacer()
                }
                .frame(height: 16)
                
                Spacer()
                    .frame(height: 9)
                
                //Overview - Location
                HStack {
                    Image("ic_home_gray6")
                        .resizable()
                        .frame(width: 16.46, height: 16)
                    
                    Spacer()
                        .frame(width: 9)
                    
                    Text("스타벅스 강남역nnnnnnnnn...")
                        .font(.wantedSansMedium(ofSize: 12))
                        .foregroundStyle(Color(.gray2))
                        .frame(maxWidth: 151, alignment: .leading)
                        .lineLimit(1)
                    
                    Spacer()
                }
                .frame(height: 16)

                // MARK: - 3 Buttons
                
                
                Spacer()
            }
            .padding(.horizontal, 16)
            
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
