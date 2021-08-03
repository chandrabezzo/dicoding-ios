//
//  PhotosView.swift
//  dicoding-ios
//
//  Created by Chandra Abdul Fattah on 03/08/21.
//

import SwiftUI

struct PhotosView: View {
    let photos = [
        Photo(imageUrl: "https://images.pexels.com/photos/8959515/pexels-photo-8959515.jpeg", photographer: "Chandra Abdul Fattah", isLiked: true),
        Photo(imageUrl: "https://images.pexels.com/photos/8953403/pexels-photo-8953403.jpeg", photographer: "Hernita", isLiked: false)
    ]
    
    var body: some View {
        List(photos) { photo in
            PhotoContentView(photo: photo)
        }
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosView()
    }
}
