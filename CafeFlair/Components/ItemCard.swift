//
//  ItemCard.swift
//  CafeFlair
//
//  Created by Kaveesha Fernando on 2025-01-28.
//

import SwiftUI

struct ItemCard : View {
    var coffee : Coffee
    
    var body: some View {
        VStack{
            AsyncImage(
                url: URL(string: coffee.imageUrl),
                content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .cornerRadius(8)
                },
                placeholder: {
                    ProgressView()
                        .frame(width: 100, height: 100)
                })
            VStack(alignment: .leading){
                VStack(alignment: .leading){
                    Text(coffee.name)
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .bold))
                    Text(coffee.description)
                        .foregroundColor(.white)
                        .font(.system(size:12))
                        .opacity(0.4)
                }
                HStack{
                    Text("USD \(coffee.price)")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .bold))
                    Spacer()
                    AddButton(){
                        print("add button")
                    }
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 250)
        .background(
            .white
                .opacity(0.1)
        )
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.white.opacity(0.6), lineWidth: 0.3)
        )
    }
}
