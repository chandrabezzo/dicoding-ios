//
//  dicoding_iosApp.swift
//  dicoding-ios
//
//  Created by Chandra Abdul Fattah on 03/08/21.
//

import SwiftUI

@main
struct dicoding_iosApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
