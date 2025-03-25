//
//  WeatherView.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 17.03.2025.
//

import SwiftUI

struct WeatherView: View {
    let status: String
    let description: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color.white.gradient)
                .frame(height: 80)
                .shadow(radius: 1, y: 2)
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(status)
                        .font(.roboto18)
                        .foregroundStyle(.waDarkGray)
                        //.multilineTextAlignment(.leading)
                        //.padding(5)
                    
                    Text(description)
                        .foregroundStyle(.gray)
                        .font(.roboto12)
                        .lineLimit(2)
                        //.multilineTextAlignment(.leading)
                        //.padding(5)
                }
                .padding(.init(top: 5,
                               leading: 10,
                               bottom: 10,
                               trailing: 0))
                
                Spacer()
                
                Image(.sun)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundStyle(.yellow)
                    .padding(.init(top: 10,
                                   leading: 5,
                                   bottom: 10,
                                   trailing: 10))
            }
        }
    }
}

#Preview {
    WeatherView(status: "Солнечно", description: "Хорошая погода для занятий на улице")
}
