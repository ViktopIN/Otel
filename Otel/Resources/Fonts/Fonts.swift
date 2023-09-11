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
                weight: UIFont.Weight(rawValue: 500)
            )
        )
        static let hedline3 = Font(
            UIFont.systemFont(
                ofSize: 16,
                weight: UIFont.Weight(rawValue: 500)
            )
        )
        static let title = Font(
            UIFont.systemFont(
                ofSize: 22,
                weight: UIFont.Weight(rawValue: 500)
            )
        )
        static let subtitle = Font(
            UIFont.systemFont(
                ofSize: 14,
                weight: UIFont.Weight(rawValue: 500)
            )
        )
        static let regular = Font(
            UIFont.systemFont(
                ofSize: 16,
                weight: UIFont.Weight(rawValue: 400)
            )
        )
        static let miniRegular = Font(
            UIFont.systemFont(
                ofSize: 14,
                weight: UIFont.Weight(rawValue: 400)
            )
        )
        static let price = Font(
            UIFont.systemFont(
                ofSize: 30,
                weight: UIFont.Weight(rawValue: 600)
            )
        )
        static let callout2 = Font(
            UIFont.systemFont(
                ofSize: 12,
                weight: UIFont.Weight(rawValue: 400)
            )
        )
        static let input = Font(
            UIFont.systemFont(
                ofSize: 17,
                weight: UIFont.Weight(rawValue: 400)
            )
        )
    }
}
