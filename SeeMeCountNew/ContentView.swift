//
//  ContentView.swift
//  SeeMeCountNew
//
//  Created by Ian Ellis on 30/01/2023.
//

import SwiftUI
import AVFoundation
import Dispatch
import Speech

var player: AVAudioPlayer?
var correctButton = Int.random(in: 1...9)
var correctAnimal = Int.random(in: 1...9)
var successChoice = Int.random(in: 1...5)

struct ContentView: View {
    @State private var isButtonPressed = false
    @State private var isFlashing = false
    // Add the AVSpeechSynthesizer as an instance variable
    private let synthesizer = AVSpeechSynthesizer()
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                if isButtonPressed {
                    SubContentView(isButtonPressed: $isButtonPressed)
                } else {
                    Button(action: {
                        self.isButtonPressed = true
                        sayAnimal()
                    }) {
                        Image("go")
                    }
                }
            }
        }
        .onAppear(perform: setupTimer)
    }

    func setupTimer() {
        Timer.scheduledTimer(withTimeInterval: 15, repeats: true) { _ in
            if self.isButtonPressed {
                self.repeatSayAnimal()
            }
        }
    }

    func repeatSayAnimal() {
        sayAnimal()
        flashCorrectAnimal()
    }

    func flashCorrectAnimal() {
        withAnimation(.easeInOut(duration: 0.5).repeatCount(3, autoreverses: true)) {
            isFlashing.toggle()
        }
    }

    func sayAnimal() {
        let speechText = String(format: "%d", correctButton)
        let utterance = AVSpeechUtterance(string: speechText)

        if let languageCode = NSLocale.current.languageCode {
            utterance.voice = AVSpeechSynthesisVoice(language: languageCode)
        }

        synthesizer.speak(utterance)
    }
}

struct SubContentView: View {
    @Binding var isButtonPressed: Bool
    @State private var isFlashing = false

    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            GeometryReader {
                geometry in
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
                
                Button(action: {
                    if correctButton == 1 {
                        DoClickButton(buttonNo:1)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            self.isButtonPressed = false
                        }
                    }
                }) {
                    Image("No1")
                        .resizable()
                        .frame( width: 100, height: 100)
                        .opacity(isFlashing && correctButton == 1 ? 0.3 : 1)
                }
                .position(x:x1 ,y: y1)
    
                Button(action: {
                    if correctButton == 2 {
                        DoClickButton(buttonNo:2)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            self.isButtonPressed = false
                        }
                    }
                }) {
                    Image("No2")
                        .resizable()
                        .frame( width: 100, height: 100)
                        .opacity(isFlashing && correctButton == 2 ? 0.3 : 1)
                }
                .position(x:x2 ,y: y2)

                Button(action: {
                    if correctButton == 3 {
                        DoClickButton(buttonNo:3)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            self.isButtonPressed = false
                        }
                    }
                }) {
                    Image("No3")
                        .resizable()
                        .frame( width: 100, height: 100)
                        .opacity(isFlashing && correctButton == 3 ? 0.3 : 1)
                }
                .position(x:x3 ,y: y3)
    
                Button(action: {
                    if correctButton == 4 {
                        DoClickButton(buttonNo:4)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            self.isButtonPressed = false
                        }
                    }
                }) {
                    Image("No4")
                        .resizable()
                        .frame( width: 100, height: 100)
                        .opacity(isFlashing && correctButton == 4 ? 0.3 : 1)
                }
                .position(x:x4 ,y: y4)
    
                // Row 3 (defined before Row 2)
                let x7 = (x1 + x2) / 2
                let y7 = (width / 1.5)
    
                let x8 = (x2 + x3) / 2
                let y8 = y7
    
                let x9 = (x3 + x4) / 2
                let y9 = y7
    
                Button(action: {
                    if correctButton == 7 {
                        DoClickButton(buttonNo:7)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            self.isButtonPressed = false
                        }
                    }
                }) {
                    Image("No7")
                        .resizable()
                        .frame( width: 100, height: 100)
                        .opacity(isFlashing && correctButton == 7 ? 0.3 : 1)
                }
                .position(x:x7 ,y: y7)
    
                Button(action: {
                    if correctButton == 8 {
                        DoClickButton(buttonNo:8)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            self.isButtonPressed = false
                        }
                    }
                }) {
                    Image("No8")
                        .resizable()
                        .frame( width: 100, height: 100)
                        .opacity(isFlashing && correctButton == 8 ? 0.3 : 1)
                }
                .position(x:x8 ,y: y8)
    
                Button(action: {
                    if correctButton == 9 {
                        DoClickButton(buttonNo:9)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            self.isButtonPressed = false
                        }
                    }
                }) {
                    Image("No9")
                        .resizable()
                        .frame( width: 100, height: 100)
                        .opacity(isFlashing && correctButton == 9 ? 0.3 : 1)
                }
                .position(x:x9 ,y: y9)
                
                // Row 2
                let x5 = x1
                let y5 = (y1 + y9) / 2
    
                let x6 = x4
                let y6 = y5
    
                Button(action: {
                    if correctButton == 5 {
                        DoClickButton(buttonNo:5)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            self.isButtonPressed = false
                        }
                    }
                }) {
                    Image("No5")
                        .resizable()
                        .frame( width: 100, height: 100)
                        .opacity(isFlashing && correctButton == 5 ? 0.3 : 1)
                }
                .position(x:x5 ,y: y5)
    
                Button(action: {
                    if correctButton == 6 {
                        DoClickButton(buttonNo:6)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            self.isButtonPressed = false
                        }
                    }
                }) {
                    Image("No6")
                        .resizable()
                        .frame( width: 100, height: 100)
                        .opacity(isFlashing && correctButton == 6 ? 0.3 : 1)
                }
                .position(x:x6 ,y: y6)
                
                DrawAnimal()
                    .opacity(isFlashing ? 0.3 : 1) // Add this line
            }
        }
        .onAppear(perform: setupTimer) // Add this line
    }

    func setupTimer() { // Add this function
        Timer.scheduledTimer(withTimeInterval: 15, repeats: true) { _ in
            if self.isButtonPressed {
                self.repeatFlashNumber()
            }
        }
    }

    func repeatFlashNumber() {
        withAnimation(.easeInOut(duration: 0.5).repeatCount(3, autoreverses: true).delay(0)) {
            isFlashing.toggle()
        }
        // Add a completion handler to reset isFlashing back to false
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            isFlashing = false
        }
    }

}

func DrawAnimal() -> some View {
    let AnimalPic = String(format: "Pic%d", correctAnimal)
    return VStack {
        Spacer()
        HStack {
            Spacer()
            VStack(spacing: 10) {
                ForEach(0..<3, id: \.self) { row in
                    HStack(spacing: 10) {
                        ForEach(0..<3, id: \.self) { col in
                            if row * 3 + col < correctButton {
                                Image(AnimalPic)
                                    .resizable()
                                    .frame(width: 144, height: 144)
                            }
                        }
                    }
                }
            }
            Spacer()
        }
        Spacer()
    }
}

func DoClickButton(buttonNo: Int) {
    if buttonNo == correctButton {
        doPlay()
    }
}

func doPlay() {
    var newSuccessChoice = Int.random(in: 1...5)
    while newSuccessChoice == successChoice {
        newSuccessChoice = Int.random(in: 1...5)
    }
    successChoice = newSuccessChoice
    let SuccessTune = String(format: "success0%d", successChoice)
    
    guard let url = Bundle.main.url(forResource: SuccessTune, withExtension: "mp3") else { return }

    do {
        try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try AVAudioSession.sharedInstance().setActive(true)

        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

        guard let player = player else { return }
        player.play()

    } catch let error {
        print(error.localizedDescription)
    }
    ResetCorrect()
}

func ResetCorrect(){
    var newCorrectButton = Int.random(in: 1...9)
    while newCorrectButton == correctButton {
        newCorrectButton = Int.random(in: 1...9)
    }
    correctButton = newCorrectButton
    
    var newCorrectAnimal = Int.random(in: 1...9)
    while newCorrectAnimal == correctAnimal {
        newCorrectAnimal = Int.random(in: 1...9)
    }
    correctAnimal = newCorrectAnimal
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
