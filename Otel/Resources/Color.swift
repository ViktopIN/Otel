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
            static let light = Color(hex: 0xFFC700).opacity(0.2)
            static let regular = Color(hex: 0xFFA800)
        }
        
        enum Blue {
            static let light = Color(hex: 0x0D72FF).opacity(0.1)
            static let regular = Color(hex: 0x0D72FF)
        }
        
        enum Gray {
            static let text = Color(hex: 0x828796)
            static let cellBackground = Color(hex: 0xFBFBFC)
            static let background = Color(hex: 0xF6F6F9)
            static let divider = Color(hex: 0x828796).opacity(0.15)
            static let barShadowStroke = Color(hex: 0xE8E9EC)
        }
        
        enum Black {
            static let regular = Color(hex: 0x000000)
            static let text = Color(hex: 0x000000).opacity(0.9)
            static let darkest = Color(hex: 0x000000).opacity(0.22)
            static let dark = Color(hex: 0x000000).opacity(0.17)
            static let light = Color(hex: 0x000000).opacity(0.1)
            static let lightest = Color(hex: 0x000000).opacity(0.05)
        }
        static let white = Color(hex: 0xFFFFFF)
    }
}

private extension Color {
    init(hex: UInt) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255.0,
            green: Double((hex >> 8) & 0xFF) / 255.0,
            blue: Double(hex & 0xFF) / 255.0,
            opacity: 1.0
        )
    }}
