//
//  HomeView.swift
//  TMR Bank
//
//  Created by Tássio Rocha on 11/09/20.
//  Copyright © 2020 Tássio Rocha. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            Spacer()
            NavigationLink(destination: AnalyticsView()) {
                CreditCard(cardNumber: "**** 1234", balance: "4000,00")
            }.padding()
            NavigationLink(destination: AnalyticsView()) {
                ActivityBank(creditValue: "6,300", cashoutValue: "4,500")
            }.padding(.horizontal)
        }.frame(width: UIScreen.main.bounds.width)
            .background(Color(red: 105/255, green: 210/225, blue: 231/255))
            .navigationViewStyle(StackNavigationViewStyle())
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitle(Text("Git Bank"), displayMode: .inline)
            .navigationBarItems(leading: Image(systemName: "equal.square.fill").font(.system(size: 24, weight: .bold, design: .default)).foregroundColor(.white).shadow(radius: 5), trailing: TRAvatar(imageResource: "dinheiro"))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


