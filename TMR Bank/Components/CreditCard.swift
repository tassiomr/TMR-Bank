//
//  CreditCard.swift
//  TMR Bank
//
//  Created by Tássio Rocha on 11/09/20.
//  Copyright © 2020 Tássio Rocha. All rights reserved.
//

import SwiftUI

struct CreditCard: View {
    var cardNumber: String
    var balance: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 35) {
            HStack(alignment: .center, spacing: 55){
                Text(cardNumber)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .offset(x: 32)
                Spacer()
                HStack {
                    Circle()
                        .fill(Color.yellow)
                        .frame(width: 25, height: 25)
                        .shadow(radius: 3)
                        .offset(x: -64)
                    
                    Circle()
                        .offset(x: -84)
                        .fill(Color.red)
                        .frame(width: 25, height: 25)
                        .overlay(Circle().stroke(Color.white, lineWidth: 1).shadow(radius: 3).offset(x: -84))
                }
            }.frame(width: UIScreen.main.bounds.width * 0.9)
            
            VStack {
                Text("Balance")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .offset(x: 15, y: 10)
                
                
                Text("$" + balance)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .offset(x: 32, y: 12)
            }
            
        }.frame(width: UIScreen.main.bounds.width * 0.9, height: 180)
            .background(Color.white)
            .cornerRadius(30)
            .shadow(color: .gray, radius: 5, x: 0, y: 0)
    }
}

struct CreditCard_Previews: PreviewProvider {
    static var previews: some View {
        CreditCard(cardNumber: "**** 3344", balance: "4000,00")
    }
}
