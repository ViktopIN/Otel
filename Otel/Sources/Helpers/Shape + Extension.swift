//
//  Shape + Extension.swift
//  Otel
//
//  Created by Виктор on 11.09.2023.
//

import SwiftUI

extension Shape {
    func frame(value: CGFloat) -> some View {
        frame(width: value, height: value) 
    }
}
