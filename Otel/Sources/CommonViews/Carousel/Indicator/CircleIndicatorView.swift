//
//  CircleIndicatorView.swift
//  Otel
//
//  Created by Виктор on 11.09.2023.
//

import SwiftUI

enum IndicatorColorType {
    case current
    case next
    case nearby
    case further
    case farthest
    case none
}

struct CircleIndicatorView: View {
    @Binding var indicatorColorType: IndicatorColorType
    var body: some View {
        Circle()
            .frame(value: 7)
            .foregroundColor(getColor())
    }
    
    func getColor() -> Color {
        switch indicatorColorType {
        case .current:
            return Color.Project.Black.regular
        case .next:
            return Color.Project.Black.darkest
        case .nearby:
            return Color.Project.Black.dark
        case .further:
            return Color.Project.Black.light
        case .farthest:
            return Color.Project.Black.lightest
        case .none:
            return Color.Project.white
        }
    }
}

struct CircleIndicatorView_Previews: PreviewProvider {
    @State static var  indicatorColorType: IndicatorColorType = .current
    static var previews: some View {
        CircleIndicatorView(indicatorColorType: CircleIndicatorView_Previews.$indicatorColorType)
    }
}
