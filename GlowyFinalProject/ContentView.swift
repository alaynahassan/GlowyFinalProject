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
                        
                       
                        Spacer()
                            .padding()
                        
                        
                        ZStack {
                            Circle()
                                .frame(width: 50, height: 30)
                                .opacity(0.5)
                                .foregroundColor(Color.pink.opacity(0.7))
                            
                        }
                    }
                    
                    
                    .padding()
                    
                }
                
                
                VStack (spacing: -20) {
                    Text("Hello Jane,")
                        .font(.custom("Arial Rounded MT Bold", size: 30))
                        .multilineTextAlignment(.leading)
                        .padding()
                        .shadow(radius: 10)
                        .offset(x:-100)
                        .foregroundColor(Color.pink.opacity(0.6))
                        
                    
                    Text("Let's see what we can do for you skin today!")
                        .font(.custom("Arial Rounded MT Bold", size: 18))
                        .multilineTextAlignment(.leading)
                        .padding()
                        .shadow(radius: 10)
                        .offset(x:-35)
                }
                
                VStack{
                    
                    Button("Check your skin to-do-list for today! >>>") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .font(.custom("Arial Rounded MT Bold", size: 18))
                    .padding(8)
                    .background(Color.pink.opacity(0.1))
                    .accentColor(Color.pink.opacity(0.6))
                    .cornerRadius(5)
                    .shadow(radius: 10)
                    
                    
                    
                }
                
                
                VStack (spacing: 300) {
                    Text("Today's Product and Article Sugesstions")
                    
                        .font(.custom("Arial Rounded MT Bold", size: 18))
                        .multilineTextAlignment(.leading)
                        .padding()
                        .shadow(radius: 10)
                   
                    
                     
                    
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
                            .shadow(radius: 7)
                        
                        
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
                            .shadow(radius: 7)
                        
                
                        
                        
                        
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
                                .shadow(radius: 7)
                                .foregroundColor(Color.pink.opacity(0.6))
                            
                            
                            Rectangle()
                                .frame(width: 170, height: 100)
                                .cornerRadius(15)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .cornerRadius(0.5)
                                .opacity(0.5)
                                .position(x: 180, y: 200)
                                .padding()
                                .shadow(radius: 7)
                                .foregroundColor(Color.pink.opacity(0.6))
                                
                            
                            
                            
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
                        .foregroundColor(Color.pink.opacity(0.5))
                        .opacity(0.5)
                        .cornerRadius(60)
                        .shadow(radius: 7)
                }
                .frame(width: 500, height: 80)
                .position(x: 200, y: 220)
            }
        }

        }
        

            
            }
            





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
