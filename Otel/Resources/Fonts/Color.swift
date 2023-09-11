//
//  Color.swift
//  Otel
//
//  Created by Виктор on 11.09.2023.
//

import SwiftUI

extension Color {
    enum Project {
        enum Yellow {
            static let light = Color(hex: "#FFC70033").opacity(0.2)
            static let regular = Color(hex: "#FFA800")
        }
        
        enum Blue {
            static let light = Color(hex: "#0D72FF1A").opacity(0.1)
            static let regular = Color(hex: "#0D72FF")
        }
        
        enum Gray {
            static let text = Color(hex: "#828796")
            static let cellBackground = Color(hex: "#FBFBFC")
            static let background = Color(hex: "#F6F6F9")
        }
        
        enum Black {
            static let regular = Color(hex: "#000000")
            static let darkest = Color(hex: "#000000").opacity(0.22)
            static let dark = Color(hex: "#000000").opacity(0.17)
            static let light = Color(hex: "#000000").opacity(0.1)
            static let lightest = Color(hex: "#000000").opacity(0.05)
        }
        static let white = Color(hex: "#FFFFFF")
    }
}

private extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}
