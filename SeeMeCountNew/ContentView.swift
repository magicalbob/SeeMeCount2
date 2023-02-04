//
//  ContentView.swift
//  SeeMeCountNew
//
//  Created by Ian Ellis on 30/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            GeometryReader { geometry in
                // Access the width and height of the view
                let width = geometry.size.width
                let height = geometry.size.height
                
                // Row 1
                let x1 = CGFloat(100)
                let y1 = CGFloat(100)
    
                let x2 = (height / 2)
                let y2 = y1
    
                let x3 = height - 100
                let y3 = y1
    
                let x4 = (1.5 * height) - 200
                let y4 = y1
                
                Button(action: { /* do something */ }) {
                    Image("No1")
                        .resizable()
                        .frame( width: 100, height: 100)
                }
                .position(x:x1 ,y: y1)
    
                Button(action: { /* do something */ }) {
                    Image("No2")
                        .resizable()
                        .frame( width: 100, height: 100)
                }
                .position(x:x2 ,y: y2)
    
                Button(action: { /* do something */ }) {
                    Image("No3")
                        .resizable()
                        .frame( width: 100, height: 100)
                }
                .position(x:x3 ,y: y3)
    
                Button(action: { /* do something */ }) {
                    Image("No4")
                        .resizable()
                        .frame( width: 100, height: 100)
                }
                .position(x:x4 ,y: y4)
    
                // Row 3 (defined before Row 2)
                let x7 = (x1 + x2) / 2
                let y7 = width / 1.5
    
                let x8 = (x2 + x3) / 2
                let y8 = y7
    
                let x9 = (x3 + x4) / 2
                let y9 = y7
    
                Button(action: { /* do something */ }) {
                    Image("No7")
                        .resizable()
                        .frame( width: 100, height: 100)
                }
                .position(x:x7 ,y: y7)
    
                Button(action: { /* do something */ }) {
                    Image("No8")
                        .resizable()
                        .frame( width: 100, height: 100)
                }
                .position(x:x8 ,y: y8)
    
                Button(action: { /* do something */ }) {
                    Image("No9")
                        .resizable()
                        .frame( width: 100, height: 100)
                }
                .position(x:x9 ,y: y9)
                
                // Row 2
                let x5 = x1
                let y5 = (y1 + y9) / 2
    
                let x6 = x4
                let y6 = y5
    
                Button(action: { /* do something */ }) {
                    Image("No5")
                        .resizable()
                        .frame( width: 100, height: 100)
                }
                .position(x:x5 ,y: y5)
    
                Button(action: { /* do something */ }) {
                    Image("No6")
                        .resizable()
                        .frame( width: 100, height: 100)
                }
                .position(x:x6 ,y: y6)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

