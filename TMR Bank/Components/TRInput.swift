//
//  TRInput.swift
//  TMR Bank
//
//  Created by Tássio Rocha on 11/09/20.
//  Copyright © 2020 Tássio Rocha. All rights reserved.
//

import SwiftUI

struct TRInput: View {
    @Binding var value: String
    var placeholder = ""
    var body: some View {
            TextField(placeholder, text: $value)
    }
}

struct TRInput_Previews: PreviewProvider {
    @State static var name = ""
    static var previews: some View {
        TRInput(value: $name, placeholder: "username")
    }
}
