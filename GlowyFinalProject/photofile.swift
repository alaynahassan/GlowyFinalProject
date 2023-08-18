//
//  photofile.swift
//  GlowyFinalProject
//
//  Created by Michelle Elias Flores on 8/18/23.
//

import SwiftUI

struct photofile: View {
    @State var isImagePickerShowing = false
    @State var selectedImage: UIImage?
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary

    var body: some View {
        VStack{
            Image(uiImage: selectedImage ?? UIImage(named:  "camera")!)
                .resizable()
                .frame(width: 200, height: 180)
            
            HStack{
                Spacer()
                Button("Select a Photo") {
                                    self.sourceType = .photoLibrary
                                    isImagePickerShowing = true
                    
                                    
                                }
                Spacer()
                Button("Take a photo") {
                    self.sourceType = .camera
                    isImagePickerShowing = true                }
                Spacer()
            }
        }
        .sheet(isPresented: $isImagePickerShowing) {
                    ImagePicker(selectedImage: $selectedImage, isImagePickerShowing: $isImagePickerShowing, sourceType: self.sourceType)
                }
        .padding()
    }
}


struct photofile_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
