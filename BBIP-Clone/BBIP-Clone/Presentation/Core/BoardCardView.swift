//
//  BoardCardView.swift
//  BBIP-Clone
//
//  Created by HanJW on 2/24/25.
//

import SwiftUI

struct BoardCardView: View {
    private let boardTitle: String
    private let content: String
    private let timeDifference: Int
  
    init(
        title: String,
        content: String,
        timeDifference: Int
    ) {
        self.boardTitle = title
        self.content = content
        self.timeDifference = timeDifference
    }
    
    private var uploadedTime: String {
        if timeDifference < 24 {
            return "\(timeDifference)시간 전"
        } else {
            let days = timeDifference / 24
            return "\(days)일 전"
        }
    }
    
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 12)
            
            VStack(alignment: .leading) {
                //MARK: - Board Title
                HStack {
                    // CapsuleView로 수정
                    Text(boardTitle)
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
                
                //MARK: - Board Content
                HStack {
                    Text(content)
                        .font(.wantedSansMedium(ofSize: 14))
                        .foregroundStyle(Color(.gray8))
                        .frame(width: 144, height: 34, alignment: .leading)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                }
                
                Spacer()
                    .frame(height: 7)
            }
            .padding(.horizontal, 13)
            
            //MARK: - Uploaded Time
            HStack {
                Spacer()
                
                Text(uploadedTime)
                    .font(.wantedSansMedium(ofSize: 12))
                    .foregroundStyle(Color(.gray6))
            }
            .padding(.horizontal, 13)
            
            Spacer()
                .frame(height: 9)
        }
        .frame(width: 171, height: 115)
        .background(Color.mainWhite)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}
