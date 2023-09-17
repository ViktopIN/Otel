//
//  DetailsViewCell.swift
//  Otel
//
//  Created by Виктор on 13.09.2023.
//

import SwiftUI

struct DetailsViewCell: View {
    var body: some View {
        VStack(alignment: .center, spacing: .zero) {
            ForEach(
                Array(Constants.viewModels.enumerated()),
                id: \.1.hashValue
            ) {
                index, model in
                
                DetailWithChevronView(viewModel: model)
                    .padding(.all, .zero)
                if index != Constants.viewModels.count - 1 {
                    Divider()
                        .frame(width: Constants.dividerWidth)
                        .foregroundColor(Color.Project.Gray.divider)
                        .padding(.vertical, Constants.dividerVerticalPadding)
                }
            }
        }
        .padding(Constants.viewPadding)
        .background {
            RoundedRectangle(cornerRadius: Constants.viewCornerRadius)
                .foregroundColor(Color.Project.Gray.cellBackground)
        }
    }
}

struct DetailsViewCell_Previews: PreviewProvider {
    static var previews: some View {
        DetailsViewCell()
    }
}

private enum Constants {
    static let viewModels = [
        DetailWithChevronViewModel(
            image: Image.Icons.emojiHappy,
            title: "Удобства",
            subTitle: "Самое необходимое"
        ),
        DetailWithChevronViewModel(
            image: Image.Icons.tickSquare,
            title: "Что включено",
            subTitle: "Самое необходимое"
        ),
        DetailWithChevronViewModel(
            image: Image.Icons.closeSquare,
            title: "Что не включено",
            subTitle: "Самое необходимое"
        )
    ]
    
    static let dividerWidth: CGFloat = 275
    static let dividerVerticalPadding: CGFloat = 10
    static let viewPadding: CGFloat = 15
    static let viewCornerRadius: CGFloat = 15
}
