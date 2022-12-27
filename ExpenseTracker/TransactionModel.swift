//
//  TransactionModel.swift
//  ExpenseTracker
//
//  Created by Shinjan Patra on 23/12/22.
//

import Foundation

struct Transaction: Identifiable {
    let id: Int
    let date: String
    let institution: String
    let account: String
    let merchant: String
    let amount: Double
    let type: TransactionType.RawValue
    var categoryId: Int
    var category: String
    let isPending: Bool
    var isTransfer: Bool
    var isEdited: Bool
    var isExpense: Bool
    
    var dateParsed: Date{
        date.dateParsed()
        
    }
            var signedAmount: Double {
            return type == TransactionType.credit.rawValue ? amount : -amount
        }
}

enum TransactionType: String{
    case debit = "debit"
    case credit = "credit"
}
