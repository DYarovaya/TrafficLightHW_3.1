//
//  ContentView.swift
//  TrafficLightHW_3.1
//
//  Created by Darya Yarovaya (RU) on 27.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var currentColor = Color.red
    //не могу понять, если убираю отсюда opacity, то цвета остаются яркими, хотя ниже я указываю цвет
    @State private var redColor = Color.red.opacity(1)
    @State private var yellowColor = Color.yellow.opacity(0.3)
    @State private var greenColor = Color.green.opacity(0.3)
    
    private let lightOn = 1.0
    private let lightOff = 0.3
    
    
    var body: some View {
        VStack {
            redLight
            yellowLight
            greenLight
            
            Spacer()
            
            Button(action: {
                switch currentColor {
                case Color.red:
                    currentColor = Color.yellow
                    redColor = Color.red.opacity(lightOff)
                    yellowColor = Color.yellow.opacity(lightOn)
                case Color.yellow:
                    currentColor = Color.green
                    yellowColor = Color.yellow.opacity(lightOff)
                    greenColor = Color.green.opacity(lightOn)
                case Color.green:
                    currentColor = Color.red
                    greenColor = Color.green.opacity(lightOff)
                    redColor = Color.red.opacity(lightOn)
                default:
                    break
                }
                
            }, label: {
                Text("Next").font(.title)
            }).padding()
        }
    }
    
    var redLight: some View {
        CircleView(color: redColor.opacity(lightOn))
    }
    var yellowLight: some View {
        CircleView(color: yellowColor.opacity(lightOff))
    }
    var greenLight: some View {
        CircleView(color: greenColor.opacity(lightOff))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
