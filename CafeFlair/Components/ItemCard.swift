//
//  ItemCard.swift
//  CafeFlair
//
//  Created by Kaveesha Fernando on 2025-01-28.
//

import SwiftUI

struct ItemCard : View {
//    var title: String
//    var description : String
//    var price : Float
    
    var body: some View {
        VStack{
            Image("coffee")
                .resizable()
                .frame(width: 100, height: 100)
            VStack(alignment: .leading){
                VStack(alignment: .leading){
                    Text("Nespresso")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .bold))
                    Text("Pure Himalyan coffee bean with cream")
                        .foregroundColor(.white)
                        .font(.system(size:12))
                        .opacity(0.4)
                }
                HStack{
                    Text("LKR 750.00")
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
