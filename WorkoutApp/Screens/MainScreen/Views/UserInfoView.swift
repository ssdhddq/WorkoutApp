//
//  UserInfoView.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 15.03.2025.
//

import SwiftUI

struct UserInfoView: View {
    let userName: String
    let userImage: String
    @State private var viewMetrics = ViewMetrics()
    @Binding var selectedDate: Date?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            // Имя и фамилия — над прямоугольником
            Text(userName)
                .font(.roboto24)
                .foregroundStyle(Color(.label))
                .fontWeight(.bold)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .shadow(radius: 1)
                .padding(.leading, viewMetrics.imageSize + viewMetrics.edgesOffset)

            // Основной контейнер с изображением и календарем
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(.systemBackground))
                    .shadow(radius: 2)
                    .frame(height: viewMetrics.backgroundViewHeight)
                
                HStack(spacing: viewMetrics.edgesOffset) {
                    Image(userImage)
                        .resizable()
                        .frame(width: viewMetrics.imageSize, height: viewMetrics.imageSize)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color(.systemGray4), lineWidth: 2))
                        .shadow(radius: 2)
                    
                    Spacer()
                    
                    CalendarView(selectedDate: $selectedDate)
                        .frame(height: viewMetrics.collectionHeight)
                }
                .padding(.horizontal, viewMetrics.edgesOffset)
            }
        }
    }

    
    struct ViewMetrics {
        let imageSize: CGFloat = 100
        let backgroundViewHeight: CGFloat = 70
        let edgesOffset: CGFloat = 5
        
        var collectionHeight: CGFloat {
            backgroundViewHeight - 2 * edgesOffset
        }
    }
}

#Preview {
    UserInfoView(userName: MockData.mockUser.fullName,
                 userImage: MockData.mockUser.image,
                 selectedDate: .constant(nil))
}
