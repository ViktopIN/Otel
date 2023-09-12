//
//  RatingView.swift
//  Otel
//
//  Created by Виктор on 13.09.2023.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack(spacing: 2) {
            Image.Icons.star
                .foregroundColor(Color.Project.Yellow.regular)
                .frame(width: 15, height: 15)
                .aspectRatio(contentMode: .fit)
            Text("5 Превосходно")
                .font(Font.Project.hedline3)
                .foregroundColor(Color.Project.Yellow.regular)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background {
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(Color.Project.Yellow.light)
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
    }
}
