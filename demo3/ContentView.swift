//
//  ContentView.swift
//  demo3
//
//  Created by yw c on 2020/01/02.
//  Copyright © 2020 yw c. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var model = Coffee.all()
    var body: some View {
        NavigationView{
        List{
            ForEach(model){ coffee in
                CoffeeCell(coffee:coffee)
               
                
            }
            }
            .navigationBarTitle(Text("coffee"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CoffeeCell: View {
    let coffee: Coffee
    var body: some View {
        return  NavigationLink(destination: coffeeDetail(coffee:coffee)){
            HStack {
                Image(coffee.imageURL)
                    .resizable()
                    .frame(width: 100, height: 100)
                Text(coffee.name)
            }
        }
    }
}
