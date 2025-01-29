//
//  Model.swift
//  CafeFlair
//
//  Created by Kaveesha Fernando on 2025-01-29.
//

import Foundation

struct Coffee: Identifiable, Decodable{
    let id: Int
    let name : String
    let description: String
    let imageUrl : String
    let price: Decimal
    let quantity: Int
}
