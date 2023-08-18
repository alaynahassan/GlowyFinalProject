//
//  basicsToRoutine.swift
//  GlowyFinalProject
//
//  Created by Hadiya Butt on 18/08/2023.
//

import SwiftUI

struct basicsToRoutine: View {
    var body: some View {
        ScrollView{
            
            VStack{
                
                Text("Your Daily Skincare Routine")
.font(.custom("Arial Rounded MT Bold", size: 23)).font(.custom("Arial Rounded MT Bold", size: 15))                    .multilineTextAlignment(.center)
                    .padding(15)
                
                Text("Toners, serums, oils – the order to apply skincare products can be totally overwhelming. For the best skincare routine, your chosen set of products must layer up safely and effectively, and cater specifically for your skin type.")
.font(.custom("Arial Rounded MT Bold", size: 15))                    .padding(15.0)
                
                Text("So here it is: our step-by-step guide to the whens, whats and whys of building a daily skincare routine. Ready? Let’s dive in...")
.font(.custom("Arial Rounded MT Bold", size: 15))                    .padding(15.0)
                Image("products")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(15.0)
                
                Text("Step 1: Cleanse")
.font(.custom("Arial Rounded MT Bold", size: 23)).font(.custom("Arial Rounded MT Bold", size: 15))                    .multilineTextAlignment(.center)
                    .padding(15)
                Text("It all starts here, baby. A thoroughly cleansed face is the foundation for the rest of your skincare routine steps, removing dead skin cells, impurities, makeup, even microscopic cake crumbs.")
.font(.custom("Arial Rounded MT Bold", size: 15))                    .padding(15.0)
                Text("Choose your cleanser wisely. They, too, have the power to tackle skincare concerns such as excess oil or dry skin.")
.font(.custom("Arial Rounded MT Bold", size: 15))                    .padding(15.0)
                Text("Tip: You should use a walnut-sized amount of face wash, and rinse off with cool, clean water. Very hot water can strip skin of its natural oils.")
.font(.custom("Arial Rounded MT Bold", size: 15))                    .padding(15.0)
                Image("cleanser")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
            }
            VStack{
                Text("Step 2: Tone")
.font(.custom("Arial Rounded MT Bold", size: 23)).font(.custom("Arial Rounded MT Bold", size: 15))                    .multilineTextAlignment(.center)
                    .padding(15)
                Text("A toner is a liquid used to restore your skin’s pH after washing, and can help to remove the last dead cells and residues of makeup or impurities left on your skin’s surface. Depending on its ingredients, it can have added benefits such as hydration or exfoliation.")
.font(.custom("Arial Rounded MT Bold", size: 15))                    .padding(15.0)
                Text("But cleanser or toner first? That’s the eternal question. Applying toner after cleanser means that it can refresh and condition skin after washing, and can swipe away residual grime. If used before, beneficial ingredients would be washed away.")
.font(.custom("Arial Rounded MT Bold", size: 15))                    .padding(15.0)
                Text("Step 3: Target")
.font(.custom("Arial Rounded MT Bold", size: 23)).font(.custom("Arial Rounded MT Bold", size: 15))                    .multilineTextAlignment(.center)
                    .padding(15)
                Text("Here’s where you can personalise your routine with a super-charged targeting treatment, like blemish-fighting Tea Tree Oil. You can mix and match what you use, but apply regularly to really feel the benefit. If your skin is tickety-boo as is, feel free to skip this step.")
.font(.custom("Arial Rounded MT Bold", size: 15))                    .padding(15.0)
                
                Text("Tip: Generally you should order skincare products from the thinnest to the thickest, or from water-based to oil-based.")
.font(.custom("Arial Rounded MT Bold", size: 15))                    .padding(15.0)
                Image("Serum")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Text("Step 4: Eyes")
.font(.custom("Arial Rounded MT Bold", size: 23)).font(.custom("Arial Rounded MT Bold", size: 15))                    .multilineTextAlignment(.center)
                    .padding(15)
            }
            VStack{
                Text("Eyes get a lot of attention. From admirers, and from skincare manufacturers, who create products to help brighten the under eye area or minimise the appearance of dark circles and wrinkles. The truth is, although eye creams can help hide them, sometimes those bountiful bags are simply genetic gifts – so read up on how to tackle dark circles in other ways. If you do choose to mask tired-looking eyes, it’s best to apply illuminating or awakening products in the morning before makeup.")
.font(.custom("Arial Rounded MT Bold", size: 15))                    .padding(15.0)
                Text("Tip: Dab a tiny amount around the whole orbital bone area using your ring finger (the most gentle finger, we reckon). Be careful not to pull the skin around the eyes here, it’s delicate.")
.font(.custom("Arial Rounded MT Bold", size: 15))                    .padding(15.0)
                Text("Step 5: Moisturise")
.font(.custom("Arial Rounded MT Bold", size: 23)).font(.custom("Arial Rounded MT Bold", size: 15))                    .multilineTextAlignment(.center)
                    .padding(15)
                Text("The next step is applying moisturiser. It’s a daily skincare routine essential, as it helps replenish your skin’s natural moisture barrier. Plus, depending on which you choose, can multitask to deal with tricky things like dull skin or added SPF.")
.font(.custom("Arial Rounded MT Bold", size: 15))                    .padding(15.0)
                Text("Tip: Leave moisturiser to absorb for a couple of minutes, before you move onto makeup or SPF. A spot of facial massage could help this along nicely.")
.font(.custom("Arial Rounded MT Bold", size: 15))                    .padding(15.0)
                Image("Moisturiser")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
            }
            VStack{
                Text("Step 6: Protect")
.font(.custom("Arial Rounded MT Bold", size: 23)).font(.custom("Arial Rounded MT Bold", size: 15))                    .multilineTextAlignment(.center)
                    .padding(15)
                Text("Sunscreen is your first line of defense and protection against skin cancer  if you were to do nothing else for your skin, sunscreen is the most important")
.font(.custom("Arial Rounded MT Bold", size: 15))                    .padding(15.0)
                Text("Opt for a sunscreen that is SPF 30 or higher, and apply it daily (even when it's cloudy), always as the final step in your skin-care routine.")
.font(.custom("Arial Rounded MT Bold", size: 15))                    .padding(15.0)
                Image("sunscreen")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Text("The information in this article is by the body shop. You can view the original article here https://www.thebodyshop.com/en-gb/tips-and-advice/skincare/skincare-routines/how-to-build-a-skin-care-routine/e/e00204")
                    .font(.caption)
                    .font(.caption)

                
            }
        }
    }
}
struct basicsToRoutine_Previews: PreviewProvider {
    static var previews: some View {
        basicsToRoutine()
    }
}

