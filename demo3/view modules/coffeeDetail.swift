//
//  coffeeDetail.swift
//  demo3
//
//  Created by yw c on 2020/01/02.
//  Copyright © 2020 yw c. All rights reserved.
//

import Foundation
import SwiftUI

struct coffeeDetail:View{
    let coffee:Coffee
    var body:some View{
        VStack {
            Image(coffee.imageURL)
            Text(coffee.name)
        }
    }
}

struct coffeeDetail_Previews: PreviewProvider {
    static var previews: some View {
        coffeeDetail(coffee:Coffee.all()[0])
    }
}
