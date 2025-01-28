//
//  Home.swift
//  CafeFlair
//
//  Created by Kaveesha Fernando on 2025-01-28.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
        ScrollView{
            VStack (alignment: .leading, spacing: 15){
                VStack(alignment: .leading){
                    Text("Hello John")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                    
                    Text("Cafe Flair")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold))
                }
                HStack(alignment: .center){
                    PrimaryButtonView (title: "Shop", width: .infinity){
                    }
                    Spacer()
                        .frame(width: 10)
                    SecondaryButtonView (title: "Home", width: .infinity){
                        print("button clicked")
                    }
                }
                
                IntroCard(
                    title:"Want something new?",
                    description: "Discover fresh brews and seamless coffee ordering"
                )
                VStack{
                    HStack{
                        Text("Featured Items")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .bold))
                        Spacer()
                        Text("See more")
                            .foregroundColor(.white)
                            .font(.system(size: 12))
                    }
                    HStack{
                        ItemCard()
                        Spacer()
                        ItemCard()
                    }
                    HStack{
                        ItemCard()
                        Spacer()
                        ItemCard()
                    }
                }
                
            }
            
            
        }
        .padding(20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.05, green: 0.06, blue: 0.08))
        .navigationBarBackButtonHidden(true)
        //.ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}
