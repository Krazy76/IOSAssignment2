//
//  Enums.swift
//
//
//  Created by Wong Wilson on 2/9/2025.
//


enum TaskPriority: String, CaseIterable, Codable {
    case low = "Low"
    case medium = "Medium"
    case high = "High"
    case urgent = "Urgent"
    
    var color: Color {
        switch self {
        case .low: return .green
        case .medium: return .yellow
        case .high: return .orange
        case .urgent: return .red
        }
    }
    var sortOrder: Int {
           switch self {
           case .low: return 0
           case .medium: return 1
           case .high: return 2
           case .urgent: return 3
           }
       }
}

enum TaskCategory: String, CaseIterable, Codable {
    case personal = "Personal"
    case work = "Work"
    case shopping = "Shopping"
    case health = "Health"
    case finance = "Finance"
    case other = "Other"
    
    var icon: String {
           switch self {
           case .personal: return "person.fill"
           case .work: return "briefcase.fill"
           case .shopping: return "cart.fill"
           case .health: return "heart.fill"
           case .finance: return "dollarsign.circle.fill"
           case .other: return "folder.fill"
        }
    }
}
// for exception handling
enum TaskError: LocalizedError {
    case emptyTitle
    case titleTooLong
    case invalidDueDate
    case taskNotFound
    case saveFailed
    case deleteFailed
    
    var errorDescription: String? {
            switch self {
            case .emptyTitle:
                return "Task title cannot be empty"
            case .titleTooLong:
                return "Task title cannot exceed 100 characters"
            case .invalidDueDate:
                return "Due date cannot be in the past"
            case .taskNotFound:
                return "Task not found"
            case .saveFailed:
                return "Failed to save task"
            case .deleteFailed:
                return "Failed to delete task"
            }
        }
    
}
