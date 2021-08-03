//
//  PhotoContentView.swift
//  dicoding-ios
//
//  Created by Chandra Abdul Fattah on 03/08/21.
//

import SwiftUI
import NetworkImage

struct PhotoContentView: View {
    
    var photo: Photo

    var body: some View {
        HStack(alignment: .center){
            NetworkImage(url: URL(string: photo.imageUrl), placeholderSystemImage: "photo.fill").clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding(.trailing, 4)
            
            VStack(alignment: .leading) {
                Text("Photographer")
                    .font(.caption)
                    .foregroundColor(.blue)
                Text(photo.photographer)
                    .font(.headline)
            }.frame(maxWidth: .infinity, alignment: .leading)
            
            LikedIconView(isLiked: photo.isLiked)
        }.padding(16)
    }
}

struct PhotoContentView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoContentView(photo: Photo(imageUrl: "https://images.pexels.com/photos/8959515/pexels-photo-8959515.jpeg", photographer: "Chandra Abdul Fattah", isLiked: true))
    }
}
