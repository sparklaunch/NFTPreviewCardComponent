//
//  Card.swift
//  NFTPreviewCardComponent (iOS)
//
//  Created by Jinwook Kim on 2022/03/24.
//

import SwiftUI

struct Card: View {
    var body: some View {
        ZStack {
            Color("CardColor")
            VStack {
                Image("Equilibrium")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(radius: 5)
            }
            .padding(30)
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding(.horizontal, 30)
        .scaledToFit()
        .shadow(radius: 5)
    }
}
