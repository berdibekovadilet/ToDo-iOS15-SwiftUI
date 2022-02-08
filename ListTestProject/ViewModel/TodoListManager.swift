//
//  TodoListManager.swift
//  ListTestProject
//
//  Created by Adilet Berdibekov on 28.11.2021.
//

import Foundation

class TodoListManager: ObservableObject {
    @Published var items: [Item] = []
    
    init(isFotTest: Bool = false) {
        if isFotTest {
            // get my data and set to my items array
        }
       
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        items.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func addItem() {
        items.append(Item(id: UUID(), name: "newly added"))
    }
    
    func delete(at indexSet: IndexSet) {
        for index in indexSet {
            items.remove(at: index)
        }
    }
    
    static func emptyState() -> TodoListManager {
        let manager = TodoListManager(isFotTest: true)
        manager.items = []
        return manager
    }
    
    static func fullState() -> TodoListManager {
        let manager = TodoListManager(isFotTest: true)
        manager.items = [Item(id: UUID(), name: "first"),
                        Item(id: UUID(), name: "second"),
                        Item(id: UUID(), name: "third")]
        return manager
    }
}
