//
//  CircleView.swift
//  TrafficLightHW_3.1
//
//  Created by Darya Yarovaya (RU) on 27.07.2021.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    var body: some View {
        Circle().foregroundColor(color)
            .frame(width: 150, height: 150)
            .padding()
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red.opacity(0.3))
    }
}
