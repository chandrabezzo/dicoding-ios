//
//  ContentView.swift
//  dicoding-ios
//
//  Created by Chandra Abdul Fattah on 03/08/21.
//

import SwiftUI
import CoreData

struct MainView: View {
    var body: some View {
        TabView {
            PhotosView().tabItem {
                Image(systemName: "photo")
                Text("Photos")
            }
            ProfileView().tabItem {
                Image(systemName: "person.crop.circle")
                Text("Profile")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
