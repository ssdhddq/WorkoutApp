//
//  MockData.swift
//  Boosty_Workout
//
//  Created by Сергей Горбачёв on 21.02.2025.
//

import Foundation

struct MockData {
    
    static let mockUser = User(firstName: "Кирилл",
                               lastName: "Сипкин",
                               height: 190,
                               weight: 87,
                               image: "mockUserPhoto")
    
    static let workoutToday: [Workout] = [Workout(name: "Pull Ups",
                                                  reps: 10,
                                                  timer: 0,
                                                  sets: 4,
                                                  date: Date(),
                                                  image: "waWeight",
                                                  isComplete: false),
                                          
                                          Workout(name: "Push Ups",
                                                  reps: 20,
                                                  timer: 0,
                                                  sets: 5,
                                                  date: Date(),
                                                  image: "waBody",
                                                  isComplete: false),
                                          
                                          Workout(name: "Biceps",
                                                  reps: 10,
                                                  timer: 0,
                                                  sets: 3,
                                                  date: Date(),
                                                  image: "waArm",
                                                  isComplete: false),
                                          
                                          Workout(name: "Triceps",
                                                  reps: 10,
                                                  timer: 0,
                                                  sets: 4,
                                                  date: Date(),
                                                  image: "waWeight",
                                                  isComplete: false),
                                          
                                          Workout(name: "Squats",
                                                  reps: 0,
                                                  timer: 105,
                                                  sets: 4,
                                                  date: Date(),
                                                  image: "waTimer",
                                                  isComplete: false),
                                          
                                          //repeat
                                          
                                          Workout(name: "Pull Ups",
                                                  reps: 10,
                                                  timer: 0,
                                                  sets: 4,
                                                  date: Date(),
                                                  image: "waWeight",
                                                  isComplete: false),
                                          
                                          Workout(name: "Push Ups",
                                                  reps: 20,
                                                  timer: 0,
                                                  sets: 5,
                                                  date: Date(),
                                                  image: "waBody",
                                                  isComplete: false),
                                          
                                          Workout(name: "Biceps",
                                                  reps: 10,
                                                  timer: 0,
                                                  sets: 3,
                                                  date: Date(),
                                                  image: "waArm",
                                                  isComplete: false),
                                          
                                          Workout(name: "Triceps",
                                                  reps: 10,
                                                  timer: 0,
                                                  sets: 4,
                                                  date: Date(),
                                                  image: "waWeight",
                                                  isComplete: false),
                                          
                                          Workout(name: "Squats",
                                                  reps: 0,
                                                  timer: 105,
                                                  sets: 4,
                                                  date: Date(),
                                                  image: "waTimer",
                                                  isComplete: false),
    ]
}
