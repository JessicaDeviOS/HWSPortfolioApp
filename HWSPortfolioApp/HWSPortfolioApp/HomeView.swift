//
//  HomeView.swift
//  HWSPortfolioApp
//
//  Created by Jessica Mallian on 10/17/22.
//

import SwiftUI

struct HomeView: View {
    static let tag: String? = "Home"
    @EnvironmentObject var dataController: DataController
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Add Data") {
                    dataController.deleteAll()
                    try? dataController.createSampleData()
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var dataController = DataController.preview
    
    static var previews: some View {
        HomeView()
    }
}
