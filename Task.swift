//
//  Task.swift
//  
//
//  Created by Wong Wilson on 2/9/2025.
//
import Foundation
import Combine
import SwiftUI

Class Task: ObservableObject, TaskProtocol, TaskValidatable, TaskPersistable, Identifiable {
    let id = UUID()
    @Published var title: String
    @Published var description: String?
    @Published var isCompleted: Bool
    let createdDate: Date
    @Published var dueDate: Date?
    @Published var priority: TaskPriority
    @Published var category: TaskCategory
    
    
    //Initilisers
    
    init(title: String,
         description: String? = nil,
         dueDate: Date? = nil,
         priority: TaskPriority = .medium,
         categroy: TaskCategory = .personal){
        self.id = UUID()
        self.title = title
        self.description = description
        self.isCompleted = falseself.createdDate = Date()
        self.dueDate = dueDate
        self.priortiy = priority
        self.category = category
    }
    
    
    enum CodingKeys: String, CodingKey{
        case id, title, description, isCompleted, createdDate, dueDate, priority, category
    }
    
    
}
