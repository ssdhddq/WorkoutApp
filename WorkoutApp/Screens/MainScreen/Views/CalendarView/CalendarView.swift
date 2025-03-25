//
//  CalendarView.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 18.03.2025.
//

import SwiftUI

struct CalendarView: View {
    @StateObject var viewModel = CalendarViewModel()
    @Binding var selectedDate: Date?
    
    var body: some View {
        HStack {
            ForEach(viewModel.week, id: \.self) { item in
                CalendarViewCell(dateName: viewModel.getDateName(from: item),
                                 dateNumber: viewModel.getDateNumber(from: item),
                                 isSelected: item == selectedDate)
                .onTapGesture {
                    selectedDate = item
                }
            }
        }
        .onAppear {
            selectedDate = viewModel.week.last
        }
    }
}

#Preview {
    CalendarView(selectedDate: .constant(nil))
}
