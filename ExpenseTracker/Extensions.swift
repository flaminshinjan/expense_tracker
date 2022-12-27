//
//  Extensions.swift
//  ExpenseTracker
//
//  Created by Shinjan Patra on 23/12/22.
//

import Foundation
import SwiftUI


extension Color {
    
    static let background = Color("Background")
    static let icons = Color("Icons")
    static let text = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
    
}
extension DateFormatter{
    static let allNumericUSA: DateFormatter = {
        print("Initializing DateFormatter")
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/DD/YYYY"
        
        return formatter
    }()
}

extension String{
    func dateParsed() -> Date {
        guard let parsedDate = DateFormatter.allNumericUSA.date(from: self) else { return Date() }
        return parsedDate
    }
}
