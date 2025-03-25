//
//  Modifiers.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 18.03.2025.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.roboto14)
            .foregroundColor(.waLightBrown)
    }
}

extension View {
    func titleModifier() -> some View {
        self.modifier(TitleModifier())
    }
}
