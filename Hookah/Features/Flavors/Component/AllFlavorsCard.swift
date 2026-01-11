//
//  AllFlavorsCard.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 18.12.2025.
//
import SwiftUI

struct AllFlavorsCard: View {
    let flavor: FlavorModel
    let lineWidth: CGFloat = 1

    @State private var isExpanded: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: .paddingSmall) {

            // MARK: - Header
            HStack(alignment: .center, spacing: .paddingMedium) {
                Text(flavor.name)
                    .font(.headerLarge)
                    .fontWeight(.bold)
                    .foregroundStyle(.pureWhite)

                Spacer()

                TobaccoTypeTag(text: flavor.tobaccoType)
            }

            // MARK: - Flavor Brand
            Text(flavor.brand)
                .font(.headerSmall)
                .fontWeight(.bold)
                .foregroundStyle(.aluminum)

            DividerLine()

            // MARK: - Description
            Text(flavor.description)
                .font(.bodyLarge)
                .foregroundStyle(.aluminum)

            // MARK: - Flavor Notes
            if isExpanded, !flavor.flavorNotes.isEmpty {
                FlavorNotesSection(notes: flavor.flavorNotes)
                    .transition(
                        .move(edge: .top)
                        .combined(with: .opacity))
            }
        }
        .padding(.paddingLarge)
        .background(
            RoundedRectangle(cornerRadius: .radiusMedium)
                .fill(.caviar)
                .stroke(.darkGullGray, lineWidth: lineWidth)
        )
        .contentShape(Rectangle())
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.25)) {
                isExpanded.toggle()
            }
        }
    }
}
#Preview (traits: .sizeThatFitsLayout){
    AllFlavorsCard(flavor: .sweetPeach)
}
