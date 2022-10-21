//
//  ContentView.swift
//  HWSPortfolioApp
//
//  Created by Jessica Mallian on 10/17/22.
//

import SwiftUI

struct ContentView: View {
    @SceneStorage("selectedView") var selectedView: String?
    
    var body: some View {
        TabView(selection: $selectedView) {
            HomeView()
                .tag(HomeView.tag)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            ProjectsView(showClosedProjects: false)
                .tag(ProjectsView.closedTag)
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Open")
                }
            
            ProjectsView(showClosedProjects: true)
                .tag(ProjectsView.openTag)
                .tabItem {
                    Image(systemName: "checkmark")
                    Text("Closed")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var dataController = DataController.preview
    
    static var previews: some View {
        ContentView()
            .environment(\.managedObjectContext, dataController.container.viewContext)
            .environmentObject(dataController)
    }
}
