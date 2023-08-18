//
//  NewToDoView.swift
//  GlowyFinalProject
//
//  Created by Michelle Elias Flores on 8/18/23.
//

import SwiftUI

struct NewToDoView: View {
    
    @Environment(\.managedObjectContext) var context
    
    @Binding var showNewTask : Bool
    @State var isImagePickerShowing = false
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    @State var title: String
    @State var date: String
    
    var body: some View {
        ZStack{
            
            VStack {
                HStack
                { VStack {
                    Spacer()
                    Text("Skin State:")
                        .foregroundColor(Color.pink.opacity(0.6))
                        .font(.title)
                        .fontWeight(.bold)
                    TextField("", text: $title).padding()
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                        .padding()
                    Text("Today's date:")
                        .foregroundColor(Color.pink.opacity(0.6))
                        .font(.title)
                        .fontWeight(.bold)
                    TextField("", text: $date).padding()
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                        .padding()
                }
                    Image("selected image")
                    
                }
                
                HStack{
                    
                    
                    Button("Take a photo") {
                        self.sourceType = .camera
                        isImagePickerShowing = true                }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.pink.opacity(0.6))
                    .cornerRadius(100)
                    .foregroundColor(Color.white)
                    Button("Select a Photo") {
                        self.sourceType = .photoLibrary
                        isImagePickerShowing = true }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.pink.opacity(0.6))
                    .cornerRadius(100)
                    .foregroundColor(Color.white)
                    
                }
            }
            Button(action: {
                self.showNewTask = false
                self.addTask(title: self.title, date: self.date)
            }) {
                Text("Add")
                
            }
            
            .buttonStyle(.borderedProminent)
            .tint(Color.pink.opacity(0.6))
            .cornerRadius(100)
            .foregroundColor(Color.white)
            
        }
        
    }
    private func addTask(title: String, date: String) {
        
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
        task.date = date
        
        do {
            try context.save()
        } catch {
            print(error)
        }
        
    }
}
struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(showNewTask: .constant(true), title: "", date: "")
    }
}


