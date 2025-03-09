//
//  GuideView.swift
//  BBIP-Clone
//
//  Created by 박현빈 on 3/9/25.
//

import SwiftUI

struct GuideView: View {
    var body: some View{
        
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 359, height: 79)
                .foregroundStyle(Color.mainWhite)
            HStack(spacing: 80){
                VStack(alignment: .leading, spacing: 1){
                    Text("삡이 처음이라면?")
                        .foregroundStyle(Color.primary3)
                        .font(.wantedSansMedium(ofSize: 14))
                    HStack{
                        Text("BBIP 이용 가이드 살펴보기")
                            .foregroundStyle(Color.mainBlack)
                            .font(.wantedSansBold(ofSize: 16))
                        Image("Group 632595")
                    }
                }
                .padding(10)
                
                
            
            
                Image("logo") // 앱 아이콘 추가
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 60)
                    
            }
            
        }

        
        
    }
}

#Preview{
    GuideView()
}

