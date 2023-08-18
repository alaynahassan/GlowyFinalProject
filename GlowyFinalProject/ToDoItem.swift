//
//  ToDoItem.swift
//  GlowyFinalProject
//
//  Created by Michelle Elias Flores on 8/18/23.
//

import Foundation
class ToDoItem: ObservableObject, Identifiable {
    
    var id = UUID()
    
    @Published var title = ""
    @Published var date = ""
    @Published var isComplete = false
    
    init(title: String, date: String) {
        self.title = title
        self.date = date
    }
}
