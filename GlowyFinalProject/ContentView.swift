//
//  ContentView.swift
//  GlowyFinalProject
//
//  Created by Alayna Hassan on 2023-08-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            
            NavigationStack {
        
                VStack () {
                    
                    HStack {
                        
                        Menu(/*@START_MENU_TOKEN@*/"Menu"/*@END_MENU_TOKEN@*/) {
                            Text("Diary")
                            Text("Skincare Quiz!")
                            Text("Community")

                            Spacer()
                            
                            
                        }
                       
                        Spacer()
                            .padding()
                        
                        
                        ZStack {
                            Circle()
                                .frame(width: 50, height: 30)
                                .opacity(0.5)
                            
                        }
                    }
                    
                    
                    .padding()
                    
                }
                
                
                VStack (spacing: -30) {
                    Text("Hello Jane,")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.purple)
                        .padding()
                    Text("Let's see what we can do for you skin today!")
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .foregroundColor(Color(hue: 0.829, saturation: 0.289, brightness: 0.778))
                }
                
                VStack{
                    
                    Button("Check your skin to-do-list for today! >>>>") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color(hue: 0.829, saturation: 0.289, brightness: 0.778))
                    .padding()
                    .border(.black)
                    .padding()
                    
                    
                }
                
                
                VStack (spacing: 300) {
                    Text("Today's Product and Article Sugesstions")
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(Color(hue: 0.829, saturation: 0.289, brightness: 0.778))
                        .padding()
                    
                }
                
                VStack {
                    
                    
                    ZStack {
                        
                        Rectangle()
                            .frame(width: 170, height: 250)
                            .cornerRadius(15)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .cornerRadius(15)
                            .opacity(0.5)
                            .position(x: 180, y: 110)
                            .padding()
                        
                        Image("makeupwash")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 170.0, height: 250.0)
                            .cornerRadius(15.0)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .cornerRadius(15.0)
                            .position(x: 180, y: 110)
                            .padding()
                        
                        
                        Rectangle()
                            .frame(width: 170, height: 250)
                            .cornerRadius(15)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .cornerRadius(15)
                            .position(x: 180, y: 110)
                            .padding()
                        
                        
                        Image("skinrec")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 170.0, height: 250.0)
                            .cornerRadius(15.0)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .cornerRadius(15.0)
                            .position(x: 180, y: 110)
                            .padding()
                        
                
                        
                        
                        
                    }
                    
                    VStack{
                        
                        ZStack {
                            
                            Rectangle()
                                .frame(width: 170, height: 100)
                                .cornerRadius(15)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .cornerRadius(15)
                                .position(x: 180, y: 200)
                                .opacity(0.5)
                                .padding()
                            
                            Rectangle()
                                .frame(width: 170, height: 100)
                                .cornerRadius(15)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .cornerRadius(0.5)
                                .opacity(0.5)
                                .position(x: 180, y: 200)
                                .padding()
                            
                            
                            
                        }
                    }
                    
                    
                    
                    
                    
                    
                } //end of Vstack
                Spacer()
                
                
                
                    .toolbar {
                        ToolbarItem(placement: .status) {
                            HStack { // Use HStack to arrange items horizontally
                                
                                NavigationLink(destination: ContentView()) {
                                    Image("housepng")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                    
                                }
                                
                                // Add spacer to distribute space
                                NavigationLink(destination: ThridView()) {
                                    Image("suggappicon")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                }
                                NavigationLink(destination: FourthView()) {
                                    Image("diary")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                    
                                }
                                NavigationLink(destination: FifthView()) {
                                    Image("world-icon-png-6")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                }
                            }
                        }
                    }
                    .cornerRadius(15)
                    .border(.black)
                Button {
                    
                } label: {
                    Rectangle()
                        .frame(width: 290, height: 70)
                        .foregroundColor(Color(hue: 0.829, saturation: 0.289, brightness: 0.778))
                        .opacity(0.5)
                        .cornerRadius(60)
                }
                .frame(width: 500, height: 80)
                .position(x: 200, y: 215)
            }
        }

        }
        

            
            }
            





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
