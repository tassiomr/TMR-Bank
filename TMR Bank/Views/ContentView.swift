//
//  ContentView.swift
//  TMR Bank
//
//  Created by Tássio Rocha on 11/09/20.
//  Copyright © 2020 Tássio Rocha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isAuth: Bool = false
    var body: some View {
       NavigationView {
            HomeView().background(NavigationConfigurator {
                    nc in
                    nc.navigationBar.barTintColor = UIColor(red: 105/255, green: 210/225, blue: 231/255, alpha: 1)
                nc.navigationBar.setValue(true, forKey: "hidesShadow")
                nc.navigationBar.layer.borderWidth = 0;
                nc.navigationBar.layer.borderColor = UIColor(red: 105/255, green: 210/225, blue: 231/255, alpha: 1).cgColor
                })
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
