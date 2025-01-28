//
//  SecondaryButtonView.swift
//  CafeFlair
//
//  Created by Kaveesha Fernando on 2025-01-28.
//

import SwiftUI

struct SecondaryButtonView: View{
    var title : String
    var width : CGFloat
    var action : () -> Void
    
    var body: some View{
        Button(action: {
            action()
        })  {
            Text(title)
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.white)
                .padding(.vertical, 22)
                .opacity(0.6)
        }
        .frame(maxWidth: width)
        .background(
            Color.white
                .opacity(0.1)
        )
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.white.opacity(0.6), lineWidth: 0.3)
        )
        .shadow(color: .black, radius: 5, x: 3, y: 3)
        .buttonStyle(PlainButtonStyle())
    }
}

