//
//  LoginView.swift
//  TMR Bank
//
//  Created by Tássio Rocha on 11/09/20.
//  Copyright © 2020 Tássio Rocha. All rights reserved.
//

import SwiftUI

struct AnalyticsView: View {
    
    @State var cpf = ""
    @State var password = ""
    var body: some View {
        VStack() {
            Image("dinheiro")
                .resizable()
                .frame(width: 128, height: 128)
                .offset(y: -80)
            TRInput(value: $cpf, placeholder: "digite seu cpf")
            TRInput(value: $password, placeholder: "digite sua senha")
            
            TRButton(label: "Entrar") {
                
            }.padding(.top, 16)
            
        }.background(NavigationConfigurator {
            nc in
            nc.navigationBar.barTintColor = .white
        })
    }
}

struct AnalyticsView_Previews: PreviewProvider {
    static var previews: some View {
        AnalyticsView()
    }
}
