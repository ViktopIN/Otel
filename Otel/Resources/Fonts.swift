//
//  Fonts.swift
//  Otel
//
//  Created by Виктор on 11.09.2023.
//

import SwiftUI

extension Font {
    enum Project {
        static let headline = Font(
            UIFont.systemFont(
                ofSize: 18,
                weight: .medium
            )
        )
        static let hedline3 = Font(
            UIFont.systemFont(
                ofSize: 16,
                weight: .medium
            )
        )
        static let title = Font(
            UIFont.systemFont(
                ofSize: 22,
                weight: .medium
            )
        )
        static let subtitle = Font(
            UIFont.systemFont(
                ofSize: 14,
                weight: .medium
            )
        )
        static let regular = Font(
            UIFont.systemFont(
                ofSize: 16,
                weight: .regular
            )
        )
        static let miniRegular = Font(
            UIFont.systemFont(
                ofSize: 14,
                weight: .regular
            )
        )
        static let price = Font(
            UIFont.systemFont(
                ofSize: 30,
                weight: .semibold
            )
        )
        static let callout2 = Font(
            UIFont.systemFont(
                ofSize: 12,
                weight: .regular
            )
        )
        static let input = Font(
            UIFont.systemFont(
                ofSize: 17,
                weight: .regular
            )
        )
    }
}
