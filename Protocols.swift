//
//  Protocols.swift
//  
//
//  Created by Wong Wilson on 2/9/2025.
//

protocol TaskProtocol {
    var id: UUID { get }
    var title: String { get set }
    var description: String? { get set }
    var isCompleted: Bool { get set }
    var createdDate: Date { get }
    var dueDate: Date? { get set }
    var priority: TaskPriority { get set }
    var category: TaskCategory { get set }
