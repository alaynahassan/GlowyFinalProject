//
//  FourthView.swift
//  GlowyFinalProject
//
//  Created by Alayna Hassan on 2023-08-17.
//

import SwiftUI
struct FourthView: View {
    
    @Environment(\.managedObjectContext) var context
    
    @FetchRequest(
        entity: ToDo.entity(),
        sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
    
    var toDoItems: FetchedResults<ToDo>
    
    @State private var showNewTask = false
    
    var body: some View {
        ZStack
        {
            VStack {
                HStack {
                    Text("Skin Diary")
                        .font(.custom("Arial Rounded MT Bold", size: 50))
                        .multilineTextAlignment(.leading)
                        .padding()
                        .shadow(radius: 10)
                        .foregroundColor(Color.pink.opacity(0.6))
                    
                    Spacer()
                    
                    Button(action: {
                        self.showNewTask = true
                    }) {
                        Text("+")
                            .font(.largeTitle)
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.pink.opacity(0.6))
                    .cornerRadius(100)
                    .foregroundColor(Color.white.opacity(0.6))
                }
                .padding()
                Spacer()
                
                
                List {
                    ForEach (toDoItems) { toDoItem in
                        Text(toDoItem.date ?? "No title")
                        Text(toDoItem.title ?? "No title")
                        Image("selected image")
                        
                    }
                    .onDelete(perform: deleteTask)
                    
                }
                .listStyle(.plain)
                .animation(.easeOut, value: showNewTask)
                
               
                
            }
            
        }
        
        
        
        if showNewTask {
            NewToDoView(showNewTask: $showNewTask, title: "", date: "")
                .transition(.move(edge: .bottom))
                .animation(.easeOut, value: showNewTask)
        }
        
    }
    
    private func deleteTask(offsets: IndexSet) {
        withAnimation {
            offsets.map { toDoItems[$0] }.forEach(context.delete)
            
            do {
                try context.save()
            } catch {
                print(error)
            }
        }
    }
    
    
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
