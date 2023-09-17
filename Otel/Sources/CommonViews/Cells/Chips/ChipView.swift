//
//  ChipView.swift
//  Otel
//
//  Created by Виктор on 13.09.2023.
//

import SwiftUI

struct ChipView: View {
    enum ChipViewType: Equatable {
        case rating
        case optionality(text: String)
        case detail
    }
    
    private enum PropertyType: Equatable {
        case text
        case textColor
        case backgroundColor
    }
    
    let type: ChipViewType
    
    var body: some View {
        HStack(spacing: Constants.hStackSpacing) {
            if type == .rating {
                Image.Icons.star
                    .resizable()
                    .foregroundColor(Color.Project.Yellow.regular)
                    .frame(
                        width: Constants.imageHeight,
                        height: Constants.imageHeight
                    )
                    .aspectRatio(contentMode: .fill)
            }
            Text(propertySetter(with: String.self, for: .text) ?? String())
                .font(Font.Project.hedline3)
                .foregroundColor(
                    propertySetter(
                        with: Color.self,
                        for: .textColor
                    )
                )
                .lineLimit(Constants.textLineLimit)
                .fixedSize(horizontal: true, vertical: true)
            if type == .detail {
                Image.Icons.chevronRight
                    .foregroundColor(Color.Project.Blue.regular)
                    .frame(
                        width: Constants.chevronSize.width,
                        height: Constants.chevronSize.height
                    )
                    .aspectRatio(contentMode: .fill)
                    .padding(Constants.chevronEdgeInsets)
            }
        }
        .padding(.horizontal, Constants.textHorizontalPadding)
        .padding(.vertical, Constants.textVerticalPadding)
        .background {
            RoundedRectangle(cornerRadius: Constants.viewCornerRadius)
                .foregroundColor(
                    propertySetter(
                        with: Color.self,
                        for: .backgroundColor
                    )
                )
        }
    }
    
    private func propertySetter<T>(
        with obj: T.Type,
        for property: PropertyType
    ) -> T? {
        if obj == String.self, property == .text {
            switch type {
            case .rating:
                return Constants.ratingTextStringConstant as? T
            case .optionality(text: let text):
                return text as? T
            case .detail:
                return Constants.detailTextStringConstant as? T
            }
        } else if obj == Color.self,
                  (
                    property == .backgroundColor
                        || property == .textColor
                  ) {
            switch type {
            case .rating:
                return (property == .textColor
                    ? Color.Project.Yellow.regular
                    : Color.Project.Yellow.light) as? T
            case .optionality(text: _):
                return (property == .textColor
                    ? Color.Project.Gray.text
                    : Color.Project.Gray.cellBackground) as? T
            case .detail:
                return (property == .textColor
                    ? Color.Project.Blue.regular
                    : Color.Project.Blue.light) as? T
            }
        }
        return nil
    }
}

struct ChipView_Previews: PreviewProvider {
    static var previews: some View {
        ChipView(type: .optionality(text: "ну что сказать"))
    }
}

private enum Constants {
    static let hStackSpacing: CGFloat = 2
    static let imageHeight: CGFloat = 15
    static let textHorizontalPadding: CGFloat = 10
    static let textVerticalPadding: CGFloat = 5
    static let textLineLimit = 1
    static let viewCornerRadius: CGFloat = 5
    static let chevronSize = CGSize(width: 6, height: 12)
    static let chevronEdgeInsets = EdgeInsets(
        top: 6,
        leading: 10,
        bottom: 6,
        trailing: -2
    )
    
    static let ratingTextStringConstant = "5 Превосходно"
    static let detailTextStringConstant = "Подробнее о номере"
}
