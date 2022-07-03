//
//  AppSettings.swift
//  Test App
//
//  Created by Luis Moncada on 03.07.22.
//

import Foundation
import SwiftUI

class AppSettings: ObservableObject {
    @Published var imageColor: Color
    
    init(imageColor: Color) {
        self.imageColor = imageColor
    }
    
    init() {
        imageColor = .secondary
    }
    
    func getImageColor() -> Color {
      return imageColor
    }
}
