//
//  SettingsView.swift
//  Test App
//
//  Created by Luis Moncada on 03.07.22.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    @StateObject var appSettings: AppSettings = AppSettings()
    
    var body: some View {
        VStack {
            List {
                Toggle("Dark Mode", isOn: $isDarkMode)
                Picker("Image Color", selection: $appSettings.imageColor) {
                    
                    Text("Primary Color").tag(Color.primary)
                    Text("Secondary Color").tag(Color.secondary)
                    Text("Accent Color").tag(Color.accentColor)
                    Text("Blue").tag(Color.blue)
                    Text("Red").tag(Color.red)
                    Text("Green").tag(Color.green)
                    Text("Cyan").tag(Color.cyan)
                    Text("Yellow").tag(Color.yellow)
                    Text("Purple").tag(Color.purple)
                    Group {
                        Text("Pink").tag(Color.pink)
                        Text("Indigo").tag(Color.indigo)
                        Text("Gray").tag(Color.gray)
                        if (isDarkMode) {
                            Text("White").tag(Color.white)
                        } else {
                            Text("Black").tag(Color.black)
                        }
                        Text("Brown").tag(Color.brown)
                    }
                }
            }
        }
        .navigationTitle("Settings")
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
