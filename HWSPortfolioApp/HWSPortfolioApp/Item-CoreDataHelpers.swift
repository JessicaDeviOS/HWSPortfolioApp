//
//  Item-CoreDataHelpers.swift
//  HWSPortfolioApp
//
//  Created by Jessica Mallian on 10/21/22.
//

import Foundation

extension Item {
    // for previews
    static var example: Item {
        let controller = DataController(inMemory: true)
        let viewContext = controller.container.viewContext
        
        let item = Item(context: viewContext)
        item.title = "Example Item"
        item.detail = "This is an example item."
        item.priority = 3
        item.creationDate = Date()
        
        return item
    }
    
    // create read only non optional properties so they are easy to deal with in
    var itemTitle: String {
        title ?? ""
    }
    
    var itemDetails: String {
        detail ?? ""
    }
    
    var itemCreationDate: Date {
        creationDate ?? Date()
    }
}
