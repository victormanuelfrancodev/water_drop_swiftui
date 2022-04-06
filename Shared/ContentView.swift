//
//  ContentView.swift
//  Shared
//
//  Created by Victor Manuel Lagunas on 2022/04/07.
//

import SwiftUI

struct ContentView: View {
    var goalProgress: Double{
        0.5
    }
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue,.cyan], startPoint: .top, endPoint: .bottom)
            Image(systemName: "drop.fill")
                .resizable()
                .font(.title.weight(.ultraLight))
                .scaledToFit()
                .foregroundStyle(.linearGradient(
                    stops: [.init(color: .clear, location: 0), .init(color: .clear, location: 1 - goalProgress), .init(color: .white, location: 1 - goalProgress),.init(color: .white, location: 1)], startPoint: .top, endPoint: .bottom)
                ).overlay(
                    Image(systemName: "drop")
                        .resizable()
                        .font(.title.weight(.ultraLight))
                        .scaledToFit()
                )
        }.foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
