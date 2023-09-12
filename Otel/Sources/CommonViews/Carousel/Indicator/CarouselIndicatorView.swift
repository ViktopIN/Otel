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
    @State var color = Color.Project.Black.lightest
    
    var body: some View {
        HStack(spacing: Constants.spacing) {
            ForEach(0 ..< indicatorNumber) {
                i in
                
                CircleIndicatorView(foregroundColor: $color)
            }
        }
        .padding(.horizontal, Constants.horizontalPadding)
        .padding(.vertical, Constants.verticalPadding)
        .background {
            RoundedRectangle(cornerRadius: Constants.cornerRadius)
                .foregroundColor(Color.Project.white)
        }
    }
}

struct CarouselIndicatorView_Previews: PreviewProvider {
    @State static var selection = 2
    static var previews: some View {
        CarouselIndicatorView(
            indicatorNumber: 3,
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
