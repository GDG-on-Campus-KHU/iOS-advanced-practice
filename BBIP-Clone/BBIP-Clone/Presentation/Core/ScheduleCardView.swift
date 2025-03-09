//
//  ScheduleCardView.swift
//  BBIP-Clone
//
//  Created by HanJW on 3/8/25.
//

import SwiftUI

struct ScheduleCardView: View {
    private let iconImage: String
    private let dDay: (year: Int, month: Int, day: Int)
    private let scheduleTitle: String
    
    init(
        iconImage: String,
        dDay: (year: Int, month: Int, day: Int),
        scheduleTitle: String
    ) {
        self.iconImage = iconImage
        self.dDay = dDay
        self.scheduleTitle = scheduleTitle
    }
    
    private var dDayInput: String {
        let currentDate = Calendar.current.startOfDay(for: Date())
        
        var dateComponents = DateComponents()
        dateComponents.year = dDay.year
        dateComponents.month = dDay.month
        dateComponents.day = dDay.day
        
        guard let targetDate = Calendar.current.date(from: dateComponents)
        else {
            return "Invalid Date"
        }
        
        let daysDifference = Calendar.current.dateComponents([.day], from: currentDate, to: targetDate).day ?? 0
        
        return daysDifference >= 0 ? "D-\(daysDifference)" : "D+\(-daysDifference)"
    }
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 15)
            
            Image(iconImage)
                .resizable()
                .frame(width: 53, height: 53)
            
            Spacer()
                .frame(height: 12)
            
            Text(dDayInput)
                .font(.wantedSansSemiBold(ofSize: 18))
                .foregroundColor(.black)
            
            Spacer()
                .frame(height: 4)
            
            Text(scheduleTitle)
                .font(.wantedSansMedium(ofSize: 14))
            //color 수정 필요
                .foregroundColor(.gray)
            
            Spacer()
                .frame(height: 24)
        }
        .frame(width: 133, height: 146)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}
