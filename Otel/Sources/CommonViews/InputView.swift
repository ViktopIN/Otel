//
//  InputView.swift
//  Otel
//
//  Created by Виктор on 17.09.2023.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    var body: some View {
        TextField("", text: $text)
            .frame(height: Constants.height)
            .background {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.Project.Gray.background)
            }
    }
}

struct InputView_Previews: PreviewProvider {
    @State static var text: String = ""
    static var previews: some View {
        InputView(text: $text)
    }
}

private enum Constants {
    static let height: CGFloat = 52
}
