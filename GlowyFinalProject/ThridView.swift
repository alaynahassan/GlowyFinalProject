//
//  ThridView.swift
//  GlowyFinalProject
//
//  Created by Alayna Hassan on 2023-08-17.
//

import SwiftUI

struct ThridView: View {
    let text = """
    How It Works:
    
    1. Start by answering a few quick questions about your skin

    2. We will assess your responses to determine your primary skin type (e.g., dry, normal, oily, combination)

    3. Receive your personalized insights into specific products and ingredients that can meet your skin's unique requirements

    Using your personalized recommendations, you can confidently choose the right cleansers, moisturizers, serums, and treatments to achieve your skincare goals

    """
    
    
    var body: some View {
         
        ZStack{
            
            
            VStack {
                NavigationStack {
                    
                    
                    Text("˗ˏˋ THE ˎˊ˗\nSKIN TYPE \n୨ QUIZ! ୧")
                    .font(.custom("Arial Rounded MT Bold", size: 50))
                    .multilineTextAlignment(.center)
                    .padding()
                    .shadow(radius: 10)
                    
                    Text(text)
                        .font(.custom("Arial Rounded MT Bold", size: 17))
                        .multilineTextAlignment(.leading)
                        .padding()
                        .shadow(radius: 10)
                        .multilineTextAlignment(.leading)
                    
                    NavigationLink(destination: SkinQuizView()) {
                                    Text("START!")
                            .font(.custom("Arial Rounded MT Bold", size: 34))
                            .padding(8)
                            .background(Color.pink.opacity(0.4))
                            .accentColor(Color.white)
                            .cornerRadius(5)
                            .shadow(radius: 10)
                    }

                } .accentColor(Color.pink.opacity(0.5))
                

            }
            .padding()
            
           
        }
        
        
    }
}

struct ThridView_Previews: PreviewProvider {
    static var previews: some View {
        ThridView()
    }
}
