//
//  Colors.swift
//  LoginForm
//
//  Created by Jonatan Padilla on 15/06/23.
//

import SwiftUI
import Foundation


struct AppColors {
    static let brightGray = Color(hex: "#f1f2f4")
    static let ultramarineBlue = Color(hex: "#4E51FE")
}



extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted))
        var rgbValue: UInt64 = 0

        if scanner.scanHexInt64(&rgbValue) {
            let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
            let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
            let blue = Double(rgbValue & 0x0000FF) / 255.0

            self.init(
                .sRGB,
                red: red,
                green: green,
                blue: blue,
                opacity: 1.0
            )
            return
        }

        self.init(
            .sRGB,
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            opacity: 1.0
        )
    }
}
