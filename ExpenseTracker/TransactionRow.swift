//
//  TransactionRow.swift
//  ExpenseTracker
//
//  Created by Shinjan Patra on 23/12/22.
//

import SwiftUI

struct TransactionRow: View {
    var transaction: Transaction

    var body: some View {
        HStack(spacing: 20) {
            VStack(alignment: .leading, spacing: 6){
                Text(transaction.merchant)
                    .bold()
                    .font(.subheadline)
                    .lineLimit(1)
                Text(transaction.category)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                // TransactionRow.swift
                // MARK: Transaction Date
                Text(transaction.dateParsed, format: .dateTime.year().month().day())
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Text(transaction.amount, format: .currency(code: "USD"))
                .bold()
                .foregroundColor(transaction.type == TransactionType.credit.rawValue ? Color.text : .primary)

        }
        .padding([.top, .bottom], 8)
    }
}

// TransactionRow.swift
struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TransactionRow(transaction: transactionPreviewData)
            TransactionRow(transaction: transactionPreviewData)
                .preferredColorScheme(.dark)
        }
    }
}


