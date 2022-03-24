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
                    .frame(height: 30)
                Text("Equilibrium #3429")
                    .foregroundColor(.white)
                    .font(.custom("Outfit", size: 27))
                    .fontWeight(.bold)
                Spacer()
                    .frame(height: 20)
                Text("Our Equilibrium collection promotes balance and calm.")
                    .font(.custom("Outfit", size: 18))
                    .foregroundColor(Color("BodyColor"))
                    .fontWeight(.light)
                    .lineSpacing(5)
                Spacer()
                    .frame(height: 20)
                HStack(alignment: .center) {
                    HStack {
                        Image("Ethereum")
                            .resizable()
                            .frame(width: 11, height: 18)
                        Text("0.041ETH")
                            .font(.custom("Outfit", size: 18))
                            .foregroundColor(Color("AccentColor"))
                            .fontWeight(.bold)
                            .tracking(1)
                    }
                    Spacer()
                    HStack {
                        Image("Clock")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("3 days left")
                            .font(.custom("Outfit", size: 18))
                            .foregroundColor(Color("BodyColor"))
                    }
                }
                Group {
                    Spacer()
                        .frame(height: 20)
                    Divider()
                        .background(Color("BodyColor"))
                    Spacer()
                        .frame(height: 20)
                    HStack {
                        Image("Avatar")
                            .overlay(Circle()
                                .stroke()
                                .foregroundColor(.white))
                        Spacer()
                            .frame(width: 18)
                        Group {
                            Text("Creation of ")
                                .foregroundColor(Color("BodyColor")) + Text("Jules Wyvern")
                                .foregroundColor(.white)
                        }
                        .font(.custom("Outfit", size: 16))
                    }
                }
            }
            .padding(30)
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding(.horizontal, 30)
        .scaledToFit()
        .shadow(radius: 5)
    }
}
