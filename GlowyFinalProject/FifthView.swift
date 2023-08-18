//
//  FifthView.swift
//  GlowyFinalProject
//
//  Created by Hadiya Butt on 18/08/2023.
//

import SwiftUI

struct articles_view: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                
                ZStack {
                    
                    
                    
                    
                    VStack {
                        
                        Text("Our Skincare Articles!")
                            .font(.custom("Arial Rounded MT Bold", size: 30))
                            .multilineTextAlignment(.leading)
                            .padding()
                            .shadow(radius: 10)
                            .foregroundColor(Color.pink.opacity(0.7))
        
                        
                        Image("products")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(15)
                            .padding(20.0)
                            .shadow(radius: 10)
                        NavigationLink(destination: basicsToRoutine()) {
                            Text("Your First Skincare Routine")
                                .font(.custom("Arial Rounded MT Bold", size: 20))
                                .foregroundColor(Color.black.opacity(0.6))
                                .shadow(radius: 10)
                            
                        }
                        //end of basics of skincare routine
                        
                        Image("Acne.png")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(15)
                            .padding(20.0)
                            .shadow(radius: 10)
                        
                        NavigationLink(destination:bestAcneProducts()) {
                            Text("Best Acne Products Of 2023")
                                .foregroundColor(Color.black.opacity(0.6))
                                .font(.custom("Arial Rounded MT Bold", size: 20))
                                .shadow(radius: 10)
                        }
                        Image("activeIngredients")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(15)
                            .padding(20.0)
                            .shadow(radius: 10)
                        Link("Guide On Active Ingredients", destination: URL(string: "https://www.vogue.com/article/skin-care-ingredients-a-to-z-guide")!)
                            .foregroundColor(Color.black.opacity(0.6))
                            .font(.custom("Arial Rounded MT Bold", size: 20))
                            .shadow(radius: 10)
                        
                        
                        
                        
                        Image("faceYoga")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(15)
                            .padding(20.0)
                            .shadow(radius: 10)
                        Link("Facial Yoga", destination: URL(string: "https://puresense.co.in/blogs/how-tos/face-yoga-for-jawline")!)
                            .foregroundColor(Color.black.opacity(0.6))
                            .font(.custom("Arial Rounded MT Bold", size: 20))
                            .shadow(radius: 10)
                        
                        VStack{
                            
                            Image("guaSha")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                                .padding(20.0)
                                .shadow(radius: 10)
                            Link("How To Use A Gua Sha", destination: URL(string: "https://www.youtube.com/watch?v=6aw-fJF59Q4/")!)
                                .foregroundColor(Color.black.opacity(0.6))
                                .font(.custom("Arial Rounded MT Bold", size: 20))
                                .shadow(radius: 10)
                            
                        }
                    }
                }
                
            }
        }
        
    }
        struct articles_view_Previews: PreviewProvider {
            static var previews: some View {
                articles_view()
            }
        }
    }

struct Previews_articles_view_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
