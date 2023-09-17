//
//  ChipsCell.swift
//  Otel
//
//  Created by Виктор on 13.09.2023.
//

import SwiftUI

struct ChipsCell: View {
    
    let chips: [ChipData] = [
            ChipData(title: Constants.chipsModels[0]),
            ChipData(title: Constants.chipsModels[1]),
            ChipData(title: Constants.chipsModels[2]),
            ChipData(title: Constants.chipsModels[3])
    ]
    
    var body: some View {
        VStack(alignment: .leading,spacing: Constants.viewSpacing) {
            ForEach(getRow().indices, id: \.self) {
                index in
                
                HStack(spacing: Constants.viewSpacing) {
                    ForEach(getRow()[index].indices, id: \.self) {
                        chipIndex in
                        
                        ChipView(type: .optionality(text: getRow()[index][chipIndex].title))
                    }
                }
            }
        }
        .coordinateSpace(name: Constants.parentVStackCoordinateSpace)
        .frame(width: Constants.cellWidth, alignment: .leading)
    }
    
    func getRow() -> [[ChipData]] {
        var rows: [[ChipData]] = []
        var currentRow = [ChipData]()
        
        var totalWidth: CGFloat = .zero
        chips.forEach {
            totalWidth += $0.size
            
            if totalWidth > Constants.cellWidth {
                rows.append(currentRow)
                currentRow.removeAll()
                currentRow.append($0)
                totalWidth = $0.size
            } else {
                currentRow.append($0)
                totalWidth += Constants.viewSpacing
            }
        }
        
        if !currentRow.isEmpty {
            rows.append(currentRow)
        }
        return rows
    }
}

struct ChipsCell_Previews: PreviewProvider {
    static var previews: some View {
        ChipsCell()
    }
}

struct ChipData: Identifiable {
    let id = UUID().uuidString
    let title: String
    var isExceeded = false
    var size: CGFloat {
        let font = UIFont.systemFont(
            ofSize: Constants.chipFontSize,
            weight: .medium
        )
        let attributed = [NSAttributedString.Key.font: font]
        return ((title as NSString).size(withAttributes: attributed).width + Constants.chipHorizontalPadding)
    }
}

private enum Constants {
    static let chipsModels = [
        "3-я линия",
        "Платный Wi-Fi в фойе",
        "30 км до аэропорта",
        "1 км до пляжа"
    ]
    static let parentVStackCoordinateSpace = "ParentVStack"
    
    static let cellWidth: CGFloat = 295
    static let viewSpacing: CGFloat = 8
    static let chipFontSize: CGFloat = 16
    static let chipHorizontalPadding: CGFloat = 20
}
