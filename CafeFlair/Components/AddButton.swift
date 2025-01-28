//
//  AddButton.swift
//  CafeFlair
//
//  Created by Kaveesha Fernando on 2025-01-29.
//

import SwiftUI

struct AddButton : View{
    var action: () -> Void
    var body: some View{
        Button(action:{
            action()
        }){
            Text("+")
                .foregroundColor(.white)
                .padding()
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [.white, Color(red: 0.05, green: 0.06, blue: 0.08)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.1)
        )
        .clipShape(Circle())
        .overlay(
                    Circle()
                        .stroke(Color.white.opacity(0.6), lineWidth: 0.3)
                )
        .shadow(color: .black, radius: 5, x: 3, y: 3)
    }
}
