    //
//  ContentView.swift
//  SeeMeCountNew
//
//  Created by Ian Ellis on 30/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("No1")
            .resizable()
            .frame( width: 100, height: 100)
            .position(x:100, y:100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
