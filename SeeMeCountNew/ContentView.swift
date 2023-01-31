//
//  ContentView.swift
//  SeeMeCountNew
//
//  Created by Ian Ellis on 30/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geometry in
            // Access the width and height of the view
            let width = geometry.size.width
            let height = geometry.size.height
            
            let centreX = height/2
            let centreY = width/2
            
            let radius=width/2

            let angle1=2*(3.142/9)*0
            let x1 = centreX + radius * cos(angle1)
            let y1 = centreY + radius * sin(angle1)
            Image("No1")
                .resizable()
                .frame( width: 100, height: 100)
                .position(x:x1/10+(width/2)-50 ,y: y1/10+(height/2)-50)
            
            let angle2=2*(3.142/9)*1
            let x2 = centreX + radius * cos(angle2)
            let y2 = centreY + radius * sin(angle2)
            Image("No2")
                .resizable()
                .frame( width: 100, height: 100)
                .position(x:x2/10+(width/2)-50, y:y2/10+(height/2)-50)
            
            let angle3=2*(3.142/9)*2
            let x3 = centreX + radius * cos(angle3)
            let y3 = centreY + radius * sin(angle3)
            Image("No3")
                .resizable()
                .frame( width: 100, height: 100)
                .position(x:x3/10+(width/2)-50, y:y3/10+(height/2)-50)
            
            let angle4=2*(3.142/9)*3
            let x4 = centreX + radius * cos(angle4)
            let y4 = centreY + radius * sin(angle4)
            Image("No4")
                .resizable()
                .frame( width: 100, height: 100)
                .position(x:x4/10+(width/2)-50, y:y4/10+(height/2)-50)
            
            let angle5=2*(3.142/9)*4
            let x5 = centreX + radius * cos(angle5)
            let y5 = centreY + radius * sin(angle5)
            Image("No5")
                .resizable()
                .frame( width: 100, height: 100)
                .position(x:x5/10+(width/2)-50, y:y5/10+(height/2)-50)
            
            let angle6=2*(3.142/9)*5
            let x6 = centreX + radius * cos(angle6)
            let y6 = centreY + radius * sin(angle6)
            Image("No6")
                .resizable()
                .frame( width: 100, height: 100)
                .position(x:x6/10+(width/2)-50, y:y6/10+(height/2)-50)

            let angle7=2*(3.142/9)*6
            let x7 = centreX + radius * cos(angle7)
            let y7 = centreY + radius * sin(angle7)
            Image("No7")
                .resizable()
                .frame( width: 100, height: 100)
                .position(x:x7/10+(width/2)-50, y:y7/10+(height/2)-50)

            let angle8=2*(3.142/9)*7
            let x8 = centreX + radius * cos(angle8)
            let y8 = centreY + radius * sin(angle8)
            Image("No8")
                .resizable()
                .frame( width: 100, height: 100)
                .position(x:x8/10+(width/2)-50, y:y8/10+(height/2)-50)
            
            let angle9=2*(3.142/9)*8
            let x9 = centreX + radius * cos(angle9)
            let y9 = centreY + radius * sin(angle9)
            Image("No9")
                .resizable()
                .frame( width: 100, height: 100)
                .position(x:x9/10+(width/2)-50, y:y9/10+(height/2)-50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

