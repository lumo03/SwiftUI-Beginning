//
//  Test_AppApp.swift
//  Test App
//
//  Created by Luis Moncada on 02.07.22.
//

import SwiftUI

@main
struct SwiftUIBeginningApp: App {
    
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    private var appSettings: AppSettings = AppSettings()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(appSettings: appSettings)
                }
                .tabItem {
                    Image(systemName: "house")
                    Text("Content")
                }
                NavigationView {
                    SettingsView(appSettings: appSettings)
                }
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
            }
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
