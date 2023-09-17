//
//  RectangleButton.swift
//  Otel
//
//  Created by Виктор on 17.09.2023.
//

import SwiftUI

struct RectangleButton: View {
    enum RectangleButtonStyle {
        case add
        case openClose
    }
    
    @State var isOpened = true
    let buttonStyle: RectangleButtonStyle

    var body: some View {
        imageConfigure()
            .frame(
                width: Constants.size.width,
                height: Constants.size.height,
                alignment: .center
            )
            .background {
                RoundedRectangle(cornerRadius: Constants.cornerRadius)
                    .fill(
                        buttonStyle == .add
                        ? Color.Project.Blue.regular
                        : Color.Project.Blue.light
                    )
            }
            .onTapGesture {
                if buttonStyle == .openClose {
                    isOpened.toggle()
                }
            }
    }
    
    @ViewBuilder
    func imageConfigure() -> some View {
        switch buttonStyle {
        case .add:
            Image.Icons.plus
                .colorMultiply(Color.Project.white)
        case .openClose:
            (isOpened ? Image.Icons.chevronUp : Image.Icons.chevronDown)
                .colorMultiply(Color.Project.Blue.regular)
        }
    }
}

struct RectangleButton_Previews: PreviewProvider {
    static var previews: some View {
        RectangleButton(buttonStyle: .openClose)
    }
}

private enum Constants {
    static let imageSize = CGSize(width: 12, height: 6)
    static let size = CGSize(width: 32, height: 32)
    static let cornerRadius: CGFloat = 6
}
