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
        { Color(red: 0.793, green: 0.853, blue: 0.642)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("Skin Diary")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .foregroundColor((Color(red: 0.482, green: 0.356, blue: 0.545)))
                    Spacer()
                    
                    Button(action: {
                        self.showNewTask = true
                    }) {
                        Text("+")
                            .font(.largeTitle)
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.482, green: 0.356, blue: 0.545))
                    .cornerRadius(100)
                    .foregroundColor(Color(red: 0.936, green: 0.827, blue: 0.984))
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
                
                Color(red: 0.793, green: 0.853, blue: 0.642)
                    .ignoresSafeArea()
                
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
