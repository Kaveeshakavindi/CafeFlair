//
//  IntroCard.swift
//  CafeFlair
//
//  Created by Kaveesha Fernando on 2025-01-28.
//

import SwiftUI

struct IntroCard: View {
    var title : String
    var description : String
    var body: some View {
        HStack(alignment: .center, spacing: 30){
            VStack(alignment: .leading, spacing: 10){
                Text(title)
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .bold))
                Text(description)
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                    .opacity(0.4)
            }
            .padding(.top, 15)
            .padding(.leading, 15)
            .padding(.bottom, 15)
            Image("coffee")
                .resizable()
                .frame(width:100, height: 100)
                .padding()
        }
        .background(
            .white.opacity(0.1)
        )
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white.opacity(0.6), lineWidth: 0.3)
        )
        
    }
}
