//
//  Card.swift
//  NFTPreviewCardComponent (iOS)
//
//  Created by Jinwook Kim on 2022/03/24.
//

import SwiftUI

struct Card: View {
    @State private var isActive: Bool = false
    var body: some View {
        ZStack {
            Color("CardColor")
            VStack(alignment: .leading) {
                Image("Equilibrium")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(radius: 5)
                    .overlay(isActive ? Image("View")
                        .resizable()
                        .frame(width: 48, height: 48) : nil)
                    .colorMultiply(isActive ? Color("AccentColor") : .white)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            isActive.toggle()
                        }
                    }
                Spacer()
                    .frame(height: 30)
                Text("Equilibrium #3429")
                    .foregroundColor(.white)
                    .font(.custom("Outfit", size: 27))
                    .fontWeight(.bold)
                    .colorMultiply(isActive ? Color("AccentColor") : .white)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            isActive.toggle()
                        }
                    }
                Spacer()
                    .frame(height: 20)
                Text("Our Equilibrium collection promotes balance and calm.")
                    .font(.custom("Outfit", size: 18))
                    .foregroundColor(Color("BodyColor"))
                    .fontWeight(.light)
                    .lineSpacing(5)
                    .fixedSize(horizontal: false, vertical: true)
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
                    HStack(spacing: 0) {
                        Image("Avatar")
                            .overlay(Circle()
                                .stroke()
                                .foregroundColor(.white))
                        Spacer()
                            .frame(width: 18)
                        Text("Creation of ")
                            .font(.custom("Outfit", size: 16))
                            .foregroundColor(Color("BodyColor"))
                        Text("Jules Wyvern")
                            .font(.custom("Outfit", size: 16))
                            .foregroundColor(.white)
                            .colorMultiply(isActive ? Color("AccentColor") : .white)
                            .onTapGesture {
                                withAnimation(.easeInOut(duration: 0.3)) {
                                    isActive.toggle()
                                }
                            }
                    }
                }
            }
            .padding(30)
            .scaledToFit()
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding(.horizontal, 30)
        .scaledToFit()
        .shadow(radius: 5)
    }
}
