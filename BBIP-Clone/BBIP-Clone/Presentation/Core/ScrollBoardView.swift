//
//  ScrollBoardView.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/24/25.
//

import SwiftUI

struct ScrollBoardView: View {
    let title: String
    let content: String
    let timeDifference: Int
    
    var uploadedTime: String {
        if timeDifference < 24 {
            return "\(timeDifference)시간 전"
        } else {
            let days = timeDifference / 24
            return "\(days)일 전"
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
                .frame(height: 12)
            
            HStack {
                Spacer()
                    .frame(width: 13)
                
                // CapsuleView로 수정
                Text(title)
                    .font(.wantedSansMedium(ofSize: 12))
                    .foregroundColor(.red)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.red, lineWidth: 1)
                    )
            }
            
            Spacer()
                .frame(height: 12)
            
            HStack {
                Spacer()
                    .frame(width: 13)
                
                Text(content)
                    .font(.wantedSansMedium(ofSize: 14))
                    .foregroundColor(.black)
                    .frame(width: 144, height: 34, alignment: .leading)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
            
            Spacer()
                .frame(height: 7)
            
            HStack {
                Spacer()
                
                Text(uploadedTime)
                    .font(.wantedSansMedium(ofSize: 12))
                //color 수정 필요
                    .foregroundColor(.gray)
                
                Spacer()
                    .frame(width: 13)
            }
            
            Spacer()
                .frame(height: 9)
        }
        .frame(width: 171, height: 115)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    ScrollBoardView(title: "게시판", content: "오늘 스터디는 강서구 카페베네에서 진행합...", timeDifference: 1)
}
