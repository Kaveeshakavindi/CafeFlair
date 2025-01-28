//
//  LoginView.swift
//  CafeFlair
//
//  Created by Kaveesha Fernando on 2025-01-28.
//

import SwiftUI

struct LoginView: View{
    @State private var email: String = ""
    @State private var password: String = ""
    var body : some View {
        VStack{
            Text("Cafe Flair")
            Button(action:{
                print("Log in button pressed")
            }){
                Text("Get Started")
            }
        }
    }
}
