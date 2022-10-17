//
//  HWSPortfolioAppApp.swift
//  HWSPortfolioApp
//
//  Created by Jessica Mallian on 10/17/22.
//

import SwiftUI

@main
struct HWSPortfolioAppApp: App {
    @StateObject var dataController: DataController
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
}
