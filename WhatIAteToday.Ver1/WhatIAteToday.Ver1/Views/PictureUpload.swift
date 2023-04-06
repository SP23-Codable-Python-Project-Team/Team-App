//
//  PictureUpload.swift
//  WhatIAteToday.Ver1
//
//  Created by Kyungyeon Lee on 3/24/23.
//
import UIKit
import SwiftUI

struct PictureUpload: View{
    
    // show image picker
    @State var showImagePicker: Bool = false
    
    // show selected image
    @State var selectedImage: Image? = Image("")
    
    @State var imageExist: Bool = false
    
    @State var showingAlert = false
    
    var imageData: Data?
    
    var body: some View{
        VStack{
            Button(action: {
                self.showImagePicker.toggle()
            }) {
                HStack {
                    Image(systemName: "photo")
                        .font(.system(size: 20))
                    Text("Photo Library")
                        .font(.headline)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                .padding(.horizontal)
            }
            
            if (self.selectedImage != Image("")) {
                self.selectedImage?.resizable().scaledToFit()
            }
            
            if (self.selectedImage != Image("")) {
                Button(action: {
                    showingAlert = true
                }) {
                    HStack {
                        Text("Upload Picture")
                            .font(.headline)
                    }
                    .alert(isPresented:$showingAlert) {
                        Alert(
                            title: Text("Are you sure you want to upload this picture?"),
                            primaryButton: .default(Text("Upload")) {
                                print("Deleting...")
                            },
                            secondaryButton: .cancel()
                        )
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding(.horizontal)
                }
            }
            
            
            
            
            
        }
        .sheet(isPresented: $showImagePicker, content: {
            ImagePicker(image: self.$selectedImage)
        })
        
    }
}
    

struct PictureUpload_Previews: PreviewProvider{
    static var previews: some View {
        PictureUpload()
    }
}
