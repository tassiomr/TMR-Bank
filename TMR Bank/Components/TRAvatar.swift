//
//  TRImage.swift
//  TMR Bank
//
//  Created by Tássio Rocha on 11/09/20.
//  Copyright © 2020 Tássio Rocha. All rights reserved.
//

import SwiftUI

struct TRAvatar: View {
    var imageResource: String
    var width: CGFloat = 24
    var height: CGFloat = 24
    var body: some View {
        Image(imageResource)
            .resizable()
            .background(Color.green)
            .frame(width: width, height: height)
        .clipShape(RoundedRectangle(cornerRadius: 6))
        .shadow(color: Color.black, radius: 3, x: 0, y:0)
    }
}

struct TRImage_Previews: PreviewProvider {
    static var previews: some View {
        TRAvatar(imageResource: "dinheiro")
    }
}
