//
//  CarouselIndicatorView.swift
//  Otel
//
//  Created by Виктор on 11.09.2023.
//

import SwiftUI

struct CarouselIndicatorView: View {
    
    let indicatorNumber: Int
    @Binding var selectionTabNumber: Int
    var body: some View {
        HStack(spacing: Constants.spacing) {
            ForEach(0 ..< indicatorNumber) {
                i in
                
                CircleIndicatorView(indicatorColorType: indicatorColorTypeProvide(for: i))
            }
        }
        .padding(.horizontal, Constants.horizontalPadding)
        .padding(.vertical, Constants.verticalPadding)
        .background {
            RoundedRectangle(cornerRadius: Constants.cornerRadius)
                .foregroundColor(Color.Project.white)
        }
    }
    
    func indicatorColorTypeProvide(for index: Int) -> Binding<IndicatorColorType> {
        if index == selectionTabNumber {
            return .constant(.current)
        } else if index == (selectionTabNumber - 1) || index == selectionTabNumber + 1 {
            return .constant(.next)
        } else if index == (selectionTabNumber - 2) || index == (selectionTabNumber + 2) {
            return .constant(.nearby)
        } else if index == (selectionTabNumber - 3) || index == (selectionTabNumber + 3) {
            return .constant(.further)
        } else if index == (selectionTabNumber - 4) || index == (selectionTabNumber + 4) {
            return .constant(.farthest)
        } else {
            return .constant(.none)
        }
    }
}

struct CarouselIndicatorView_Previews: PreviewProvider {
    @State static var selection = 0
    static var previews: some View {
        CarouselIndicatorView(
            indicatorNumber: 5,
            selectionTabNumber: CarouselIndicatorView_Previews.$selection
        )
    }
}

private enum Constants {
    static let spacing: CGFloat = 5
    static let horizontalPadding: CGFloat = 10
    static let verticalPadding: CGFloat = 5
    static let cornerRadius: CGFloat = 5
}
