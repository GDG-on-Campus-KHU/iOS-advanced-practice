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
            HStack{
                VStack(alignment: .leading, spacing: 1){
                    Text("삡이 처음이라면?")
                        .foregroundStyle(Color.primary3)
                        .font(.wantedSansMedium(ofSize: 14))
                    
                        Text("BBIP 이용 가이드 살펴보기")
                            .foregroundStyle(Color.mainBlack)
                            .font(.wantedSansBold(ofSize: 16))
                        
                    
                }
                .padding()
                
                
                    
            }
            
        }

        
        
    }
}

#Preview{
    GuideView()
}

