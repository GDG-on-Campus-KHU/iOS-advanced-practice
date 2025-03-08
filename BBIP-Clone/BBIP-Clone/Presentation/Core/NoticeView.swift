//
//  NoticeView.swift
//  BBIP-Clone
//
//  Created by 박현빈 on 3/9/25.
//
//Font.custom(FontName.wantedSansdBold.rawValue, size: fontSize)
import SwiftUI

enum noticetype{
    case gray2_gray8
    case gray8_gray6
    
    var backgroundColor: Color {
        switch self {
        case .gray2_gray8: return Color.gray2
        case .gray8_gray6: return Color.gray8
      
        }
    }
    
    var textColor: Color {
        switch self {
        case .gray2_gray8: return Color.gray8
        case .gray8_gray6: return Color.gray6
        }
    }
    
    
}

struct NoticeView: View {
    let title: String
    let type: noticetype
    
    var body: some View {
        ZStack{
            

            HStack(spacing :0){
                Text("공지")
                    .foregroundStyle(Color.primary3)
                    .font(.wantedSansBold(ofSize: 14))
                    .frame(alignment: .leading)
                    .padding(.trailing, 5)
                    .padding(.vertical, 2)
                    .overlay(
                        Circle()
                            .fill(.primary3)
                            .frame(width: 4, height: 4),
                        alignment: .topTrailing
                    )
                    .padding(.trailing, 5)
                
                
                
                
                Text(title)
                    .font(.wantedSansSemiBold(ofSize: 14))
                    .foregroundColor(type.textColor)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                
                    .clipShape(Capsule())
                
            }
            .frame(maxWidth: 335, maxHeight: 20, alignment: .leading)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(type.backgroundColor)
                .frame(width:361,height: 40))
           
            Spacer()
        }
        .padding(.horizontal, 16)
    }
    
    
}

#Preview {
    NoticeView(title: "다음주 스터디 하루 쉬어갑니다! 확인 해주세요...!", type: .gray2_gray8)
        .padding()
    NoticeView(title: "등록된 공지가 없어요", type: .gray8_gray6)
}

