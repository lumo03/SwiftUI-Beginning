//
//  ImageView.swift
//  Test App
//
//  Created by Luis Moncada on 03.07.22.
//

import SwiftUI

struct ImageView: View {
    
    @Binding var isCircle: Bool
    @StateObject var appSettings: AppSettings = AppSettings()
    
    var body: some View {
        if (isCircle) {
            Circle()
                .foregroundColor(appSettings.imageColor)
        } else {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(appSettings.imageColor)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    
    @State static var isCircle: Bool = true
    
    static var previews: some View {
        ImageView(isCircle: $isCircle)
    }
}
