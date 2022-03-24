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
            VStack(alignment: .leading) {
                Image("Equilibrium")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(radius: 5)
                Spacer()
                    .frame(height: 20)
                Text("Equilibrium #3429")
                    .foregroundColor(.white)
                    .font(.custom("Outfit", size: 27))
                    .fontWeight(.bold)
            }
            .padding(30)
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding(.horizontal, 30)
        .scaledToFit()
        .shadow(radius: 5)
    }
}
