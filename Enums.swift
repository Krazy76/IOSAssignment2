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
