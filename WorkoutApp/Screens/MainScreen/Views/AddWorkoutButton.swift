//
//  AddWorkountButton.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 17.03.2025.
//

import SwiftUI

struct AddWorkoutButton: View {
    @State private var isPressed = false
    @State private var viewMetrics = ViewMetrics()
    @ObservedObject var viewModel: MainScreenViewModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .frame(width: viewMetrics.sizeButton,
                       height: viewMetrics.sizeButton)
                .foregroundStyle(Color(.systemGray6))
                .shadow(radius: 2)
            
            VStack {
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: viewMetrics.sizeImage,
                           height: viewMetrics.sizeImage)
                    .foregroundStyle(.blue.gradient)
                
                Text(viewMetrics.label)
                    .font(.roboto12)
                    .foregroundStyle(Color(.waBlack))
                    .padding(.horizontal, 5)
                    .lineLimit(1)
                    .minimumScaleFactor(0.7)
            }
        }
        .scaleEffect(isPressed ? 0.9 : 1.0)
        .animation(.easeInOut(duration: 0.15), value: isPressed)
        .onTapGesture {
            withAnimation {
                isPressed = true
                viewModel.isShowingAddWorkoutView = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                withAnimation {
                    isPressed = false
                }
            }
            print("tap")
        }
    }
    
    struct ViewMetrics {
        let label = "Add workout"
        let sizeButton: CGFloat = 80
        var sizeImage: CGFloat { sizeButton * 0.6 }
        let edgesOffset: CGFloat = 5
    }
}


