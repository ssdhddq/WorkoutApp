//
//  CalendarViewCell.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 18.03.2025.
//

import SwiftUI

struct CalendarViewCell: View {
    let dateName: String
    let dateNumber: Int
    var isSelected: Bool
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(isSelected ? Color(.secondarySystemBackground) : Color(.systemBackground))
            
            VStack(spacing: 4) {
                Text(dateName)
                    .font(.robotoBold15)
                    .foregroundStyle(Color(.label))
                    .padding(.top, 5)
                
                Spacer()
                
                Text("\(dateNumber)")
                    .font(.robotoBold20)
                    .foregroundStyle(Color(.label))
                    .padding(.bottom, 5)
            }
        }
        .shadow(radius: isSelected ? 2 : 0)
    }
}

#Preview {
    CalendarViewCell(dateName: "YE", dateNumber: 1, isSelected: false)
}
