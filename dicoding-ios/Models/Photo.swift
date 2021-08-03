//
//  Photo.swift
//  dicoding-ios
//
//  Created by Chandra Abdul Fattah on 03/08/21.
//

import Foundation

struct Photo: Identifiable {
    let id = UUID()
    let imageUrl: String
    let photographer: String
    let isLiked: Bool
}
