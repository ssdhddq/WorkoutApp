//
//  Int + Extension.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 19.03.2025.
//

import Foundation

extension Int {
    func toMinSecFormat() -> String {
        return "\(self/60)min \(self%60)sec"
    }
}
