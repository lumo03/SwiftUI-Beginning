//
//  ContentView.swift
//  Test App
//
//  Created by Luis Moncada on 02.07.22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isCircle: Bool = false
    @AppStorage("isDarkMode") var isDarkMode = false
    @StateObject var appSettings: AppSettings = AppSettings()
    
    var body: some View {
        VStack {
            Spacer()
            ImageView(
                isCircle: $isCircle,
                appSettings: appSettings
            )
            .frame(width: 200, height: 200, alignment: Alignment.center)
            
            Spacer(minLength: 2.0)
            Button("Transform") {
                withAnimation {
                    isCircle.toggle()
                }
            }
            .padding()
            .background(Color.accentColor)
            .clipShape(Capsule())
            .foregroundColor(isDarkMode ?
                .black : .white)
            Toggle(
                "Show Circle",
                isOn: $isCircle.animation()
            )
            .padding()
            Spacer()
        }
        .navigationTitle("Content")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
