//
//  ActionButton.swift
//  Otel
//
//  Created by Виктор on 17.09.2023.
//

import SwiftUI

struct ActionButton: View {
    
    let title: String
    let closure: (() -> Void)? = nil
    
    var body: some View {
        Button {
            closure?()
        } label: {
            Text(title)
                .font(Font.Project.hedline3)
                .foregroundColor(Color.Project.white)
                .lineLimit(Constants.lineLimit)
        }
        .frame(
            width: Constants.buttonSize.width,
            height: Constants.buttonSize.height,
            alignment: .center
        )
        .background {
            RoundedRectangle(cornerRadius: Constants.cornerRadius)
                .foregroundColor(Color.Project.Blue.regular)
        }
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton(title: "К выбору номера")
    }
}

private enum Constants {
    static let buttonSize = CGSize(width: 343, height: 48)
    static let lineLimit = 1
    static let cornerRadius: CGFloat = 15
}
