//
//  DetailWithChevronView.swift
//  Otel
//
//  Created by Виктор on 13.09.2023.
//

import SwiftUI

struct DetailWithChevronViewModel: Hashable {
    let image: Image
    let title: String
    let subTitle: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}

struct DetailWithChevronView: View {
    let detailWithChevronViewModel: DetailWithChevronViewModel
    
    init(viewModel: DetailWithChevronViewModel) {
        self.detailWithChevronViewModel = viewModel
    }
    
    var body: some View {
        HStack(
            alignment: .center,
            spacing: Constants.detailHStackSpacing
        ) {
            detailWithChevronViewModel.image
                .resizable()
                .frame(
                    width: Constants.imageSizeValue,
                    height: Constants.imageSizeValue
                )
            VStack(
                alignment: .leading,
                spacing: Constants.detailTextStackSpacing
            ) {
                Text(detailWithChevronViewModel.title)
                    .font(Font.Project.hedline3)
                    .foregroundColor(Color.Project.Black.regular)
                Text(detailWithChevronViewModel.subTitle)
                    .font(Font.Project.subtitle)
                    .foregroundColor(Color.Project.Gray.text)
            }
            Spacer()
            Image.Icons.chevronRight
                .resizable()
                .colorMultiply(Color.Project.Black.regular)
                .frame(
                    width: Constants.chevronSize.width,
                    height: Constants.chevronSize.height
                )
                .padding(Constants.chevronEdgeInsets)
        }
        .frame(
            width: Constants.cellSize.width,
            height: Constants.cellSize.height
        )
    }
}

struct DetailWithChevronView_Previews: PreviewProvider {
    static var previews: some View {
        DetailWithChevronView(
            viewModel: DetailWithChevronViewModel(
                image: Image.Icons.emojiHappy,
                title: "Удобства",
                subTitle: "Самое необходимое"
            )
        )
    }
}

private enum Constants {
    static let detailTextStackSpacing: CGFloat = 2
    static let detailHStackSpacing: CGFloat = 12
    static let imageSizeValue: CGFloat = 24
    static let chevronSize = CGSize(width: 6, height: 12)
    static let chevronEdgeInsets = EdgeInsets(
        top: 6,
        leading: 10,
        bottom: 6,
        trailing: 8
    )
    static let cellSize = CGSize(width: 313, height: 38)
}
