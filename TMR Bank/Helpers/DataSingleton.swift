//
//  DataSingleton.swift
//  TMR Bank
//
//  Created by Tássio Rocha on 11/09/20.
//  Copyright © 2020 Tássio Rocha. All rights reserved.
//

import Foundation
import UIKit


class DataSingleton {
    
    static var shared: DataSingleton {
        return DataSingleton()
    }
    
    var cornerFormRadius: CGFloat = 4.0
    
    var width: CGFloat {
        return UIScreen.main.bounds.width - 32
    }

    var height: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    private init() { }
    
}
