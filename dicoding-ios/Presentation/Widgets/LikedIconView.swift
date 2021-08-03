//
//  LikedIconView.swift
//  dicoding-ios
//
//  Created by Chandra Abdul Fattah on 03/08/21.
//

import SwiftUI

struct LikedIconView: View {
    
    @State var isLiked: Bool
    
    var body: some View {
        let image: String = (isLiked) ? "heart.fill" : "heart"
        let color: Color = (isLiked) ? .red : .black
        
        Image(systemName: image).foregroundColor(color).onTapGesture {
            isLiked = !isLiked
        }
    }
}

struct LikedIconView_Previews: PreviewProvider {
    static var previews: some View {
        LikedIconView(isLiked: true)
    }
}
