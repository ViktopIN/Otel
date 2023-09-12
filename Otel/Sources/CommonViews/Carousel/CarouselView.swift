//
//  CarouselView.swift
//  Otel
//
//  Created by Виктор on 11.09.2023.
//

import SwiftUI

struct CarouselView: View {
    
    @State var selection = 0
    let images = ["img", "img", "img"]
    
    var body: some View {
        ZStack {
            TabView(selection: $selection) {
                ForEach(images, id: \.self) {
                    image in
                    
                    Image(image)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            VStack(alignment: .center) {
                Spacer()
                CarouselIndicatorView(indicatorNumber: images.count, selectionTabNumber: $selection)
                    .padding(
                        .bottom,
                        Constants.carouselIndicatorViewBottomPadding
                    )
            }
        }
        .frame(
            width: Constants.viewSize.width,
            height: Constants.viewSize.height
        )
        .cornerRadius(Constants.viewCornerRadius)
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
    }
}

private enum Constants {
    static let carouselIndicatorViewBottomPadding: CGFloat = 8
    static let viewSize = CGSize(width: 343, height: 257)
    static let viewCornerRadius: CGFloat = 15
}
