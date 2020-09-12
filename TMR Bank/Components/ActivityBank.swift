//
//  ActivityBank.swift
//  TMR Bank
//
//  Created by Tássio Rocha on 12/09/20.
//  Copyright © 2020 Tássio Rocha. All rights reserved.
//

import SwiftUI

struct Values: View {
    var title: String
    var value: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.subheadline)
                .foregroundColor(.secondary)
            Text("$" + value)
                .font(.headline)
                .foregroundColor(.white)
            
        }
        .padding(0)
    }
}

struct ActivityBank: View {
    var creditValue: String
    var cashoutValue: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 35) {
            HStack {
                Circle()
                    .frame(width: 65, height: 65)
                    .opacity(0)
                    .overlay(Circle().stroke(lineWidth: 6).fill(Color.white))
                    .padding(.trailing)
                VStack(alignment: .leading) {
                    Text("Bank Activity")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .padding(.bottom, 12)
                    HStack(alignment: .center, spacing: 20) {
                        Values(title: "Credit", value: creditValue)
                        Values(title: "Cashout", value: cashoutValue)
                    }
                }
            }
            
        }.frame(width: UIScreen.main.bounds.width * 0.90, height: 140)
            .background(Color.blue)
            .cornerRadius(30)
            .shadow(color: .gray, radius: 5, x: 0, y: 0)
    }
}

struct ActivityBank_Previews: PreviewProvider {
    static var previews: some View {
        ActivityBank(creditValue: "6,300", cashoutValue: "4,500")
    }
}
