//
//  SigninView.swift
//  CafeFlair
//
//  Created by Kaveesha Fernando on 2025-01-28.
//

import SwiftUI

struct SigninView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View{
        NavigationView{
            VStack(){
                VStack(spacing: 50){
                    Text("Sign in")
                        .foregroundColor(.white)
                    
                    Image("Cf")
                        .resizable()
                        .frame(width:50, height: 50)
                    VStack(spacing: 10){
                        PrimaryTextField(text: $email, label: "Email")
                        PrimaryTextField(text: $password, label: "Password")
                        NavigationLink(destination: Home()){
                            PrimaryButtonView(
                                title: "Sign in",
                                width: UIScreen.main.bounds.width * 3/4
                            ){}
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.05, green: 0.06, blue: 0.08))
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

