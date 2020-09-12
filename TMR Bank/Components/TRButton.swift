//
//  TRButton.swift
//  TMR Bank
//
//  Created by Tássio Rocha on 11/09/20.
//  Copyright © 2020 Tássio Rocha. All rights reserved.
//

import SwiftUI

struct TRButton: View {
    var label = ""
    var action:() -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
            
        }
    }
}

struct TRButton_Previews: PreviewProvider {
    static var previews: some View {
        TRButton(label: "Entrar") {
            
        }
    }
}
