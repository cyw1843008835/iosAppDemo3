//
//  coffee.swift
//  demo3
//
//  Created by yw c on 2020/01/02.
//  Copyright © 2020 yw c. All rights reserved.
//

import Foundation
import SwiftUI

struct Coffee:Identifiable {
    let id = UUID()
    let name:String
    let imageURL:String
}
extension Coffee{
    static func all()->[Coffee]{
        return [
            Coffee(name: "hotcoffee",imageURL: "hot"),
            Coffee(name: "coldcoffee", imageURL: "cold")
        ]
    }
}
