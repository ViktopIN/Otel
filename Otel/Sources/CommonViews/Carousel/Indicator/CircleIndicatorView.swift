//
//  CircleIndicatorView.swift
//  Otel
//
//  Created by Виктор on 11.09.2023.
//

import SwiftUI

struct CircleIndicatorView: View {
    @Binding var foregroundColor: Color
    var body: some View {
        Circle()
            .frame(value: 7)
            .foregroundColor(foregroundColor)
    }
}

struct CircleIndicatorView_Previews: PreviewProvider {
    @State static var color = Color.Project.Black.dark
    static var previews: some View {
        CircleIndicatorView(foregroundColor: $color)
    }
}
