//
//  ListTestProjectApp.swift
//  ListTestProject
//
//  Created by Adilet Berdibekov on 24.11.2021.
//

import SwiftUI

@main
struct ListTestProjectApp: App {
    
    @StateObject var todoManager = TodoListManager()
    
    var body: some Scene {
        WindowGroup {
            TodoListView(todoManager: TodoListManager())
        }
    }
}
