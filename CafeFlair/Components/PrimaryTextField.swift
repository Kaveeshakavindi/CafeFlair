//
//  PrimaryTextField.swift
//  CafeFlair
//
//  Created by Kaveesha Fernando on 2025-01-28.
//

import SwiftUI

struct PrimaryTextField: View {
    
    @Binding var text: String
    var label : String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6){
            Text(label)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .font(.system(size: 12))
            TextField("", text: $text)
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
                .foregroundColor(.white)
                .background(
                    Color.white.opacity(0.2)
                )
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.white.opacity(1), lineWidth: 0.3)
                )
                .frame(width: UIScreen.main.bounds.width * 3/4)
                .font(.system(size: 16))
        }
    }
}
