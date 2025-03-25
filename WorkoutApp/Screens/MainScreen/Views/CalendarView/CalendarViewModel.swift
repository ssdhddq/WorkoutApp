//
//  CalendarViewModel.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 18.03.2025.
//

import SwiftUI

final class CalendarViewModel: ObservableObject {
    @Published var week: [Date] = []
    
    init() {
        fillCalendar()
    }
    
    private func fillCalendar() {
        for day in stride(from: 6, through: 0, by: -1) {
            if let date = Calendar.current.date(byAdding: .day, value: -day, to: Date()) {
                week.append(date)
            }
        }
    }
    
    func getDateNumber(from date: Date) -> Int {
        Calendar.current.component(.day, from: date)
    }
    
    func getDateName(from date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEEEE"
        return dateFormatter.string(from: date)
    }
}
