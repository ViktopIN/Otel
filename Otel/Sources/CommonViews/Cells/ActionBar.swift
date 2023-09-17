//
//  ActionBar.swift
//  Otel
//
//  Created by Виктор on 17.09.2023.
//

import SwiftUI

struct ActionBar: View {
    let buttonTitle: String
    var body: some View {
        ActionButton(title: buttonTitle)
            .padding(Constants.actionButtonEdgeInsets)
            .background {
                GeometryReader { geometry in
                    Path { path in
                        let width = geometry.size.width
                        let height = geometry.size.height
                        let cornerRadius: CGFloat = Constants.barCornerRadius
                        path.move(to: CGPoint(x: 0, y: 0))
                        path.addLine(to: CGPoint(x: width, y: 0))
                        path.addLine(to: CGPoint(x: width, y: height - cornerRadius))
                        path.addArc(center: CGPoint(x: width - cornerRadius, y: height - cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: .zero), endAngle: Angle(degrees: 90), clockwise: false)
                        path.addLine(to: CGPoint(x: cornerRadius, y: height))
                        path.addArc(center: CGPoint(x: cornerRadius, y: height - cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                    }
                    .fill(Color.Project.white)
                }
            }
            .overlay (
                Rectangle()
                    .stroke(Color.Project.Gray.barShadowStroke, lineWidth: 1)
                    .frame(height: 1),
                alignment: .top
            )
    }
}

struct ActionBar_Previews: PreviewProvider {
    static var previews: some View {
        ActionBar(buttonTitle: "К выбору номера")
    }
}

private enum Constants {
    static let actionButtonEdgeInsets = EdgeInsets(
        top: 12,
        leading: 16,
        bottom: 28,
        trailing: 16
    )
    static let barCornerRadius: CGFloat = 40
}
