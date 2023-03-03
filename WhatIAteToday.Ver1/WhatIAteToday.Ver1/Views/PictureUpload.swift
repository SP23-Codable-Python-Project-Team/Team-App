//
//  PictureUpload.swift
//  WhatIAteToday.Ver1
//
//  Created by Kyungyeon Lee on 3/24/23.
//

import SwiftUI

struct PictureUpload: View{
    
    // show image picker
    @State var showImagePicker: Bool = false
    
    // show selected image
    @State var selectedImage: Image? = Image("")
    
    var body: some View{
        VStack{
            Button(action: {
                self.showImagePicker.toggle()
            }, label: {
                Text("Select Image")
            })
            
            // show image
            self.selectedImage?.resizable().scaledToFit()
            
            // upload buttion
            Button(action: {
                
            }, label: {
                Text("Upload Image")
            })
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
