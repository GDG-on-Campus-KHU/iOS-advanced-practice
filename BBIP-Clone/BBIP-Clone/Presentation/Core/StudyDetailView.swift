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
            HeaderBackgroundView()
            
            // MARK: - Boxing Ring Image
            BoxingRingView()
            
            VStack {
                Spacer()
                    .frame(height: 54)
                
                // MARK: - Header
                HeaderView()
                
                Spacer()
                    .frame(height: 12)
                
                VStack {
                    // MARK: - Notice View
                    NoticeView(title: "등록된 공지가 없어요", type: .gray8_gray6)
                    
                    Spacer()
                        .frame(height: 18)
                    
                    // MARK: - Study Overview
                    StudyOverviewView()
                }
                .padding(.horizontal, 16)
                
                Spacer()
                    .frame(height: 225)
                
                // MARK: - 3 Buttons
                ButtonsView()
            }
        }
    }
}

fileprivate struct HeaderBackgroundView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color(.gray9))
                .frame(maxWidth: .infinity)
                .frame(height: 417)
            
            Spacer()
        }
    }
}

fileprivate struct BoxingRingView: View {
    var body: some View {
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

fileprivate struct HeaderView: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 20)
            
            Text("TOEIC / IELTS 스터디")
                .frame(width: 269, height: 29, alignment: .leading)
                .font(.wantedSansSemiBold(ofSize: 24))
                .foregroundStyle(Color(.mainWhite))
            
            Spacer()
            
            Image("ic_dots")
                .resizable()
                .frame(width: 20, height: 20)
            
            Spacer()
                .frame(width: 28)
        }
        .padding(.vertical, 6.5)
    }
}

fileprivate struct StudyOverviewView: View {
    var body: some View {
        // MARK: Overview - Title
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
        
        // MARK: Overview - Schedule
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
        
        // MARK: Overview - Location
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
    }
}

fileprivate struct ButtonsView: View {
    var body: some View {
        HStack() {
            // "출석 인증" 버튼
            Button(action: {
                // "출석 인증" 기능
                print("Attendance Managing Button Tapped")
            }) {
                VStack {
                    Image("ic_gloves")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding(.vertical, 14)
                    
                    Text("출석 인증")
                        .font(.wantedSansMedium(ofSize: 16))
                        .foregroundStyle(Color(.gray8))
                }
            }
            
            Spacer()
            
            // "장소확인" 버튼
            Button(action: {
                // "장소확인" 기능
                print("Location Button Tapped")
            }) {
                VStack {
                    Image("ic_ring")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding(.vertical, 14)
                    
                    Text("장소확인")
                        .font(.wantedSansMedium(ofSize: 16))
                        .foregroundStyle(Color(.gray8))
                }
            }
            
            Spacer()
            
            // 아카이브 버튼
            Button(action: {
                // "아카이브" 기능
                print("Archive Button Tapped")
            }) {
                VStack {
                    Image("ic_cup")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding(.vertical, 14)
                    
                    Text("아카이브")
                        .font(.wantedSansMedium(ofSize: 16))
                        .foregroundStyle(Color(.gray8))
                }
            }
        }
        .padding(.horizontal, 50)
        .frame(maxWidth: .infinity)
    }
}


#Preview {
    StudyDetailView()
}
