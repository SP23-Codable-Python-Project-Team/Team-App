//
//  PostSquareImage.swift
//  WhatIAteToday.Ver1
//
//  Created by Jeewon Koo on 4/5/23.
//

import SwiftUI

struct PostSquareImage: View {
    var image: Image
    
    var body: some View {
        image
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 300, height: 300, alignment: .topLeading)
        .border(.blue)
        .clipped()
    }
}

struct PostSquareImage_Previews: PreviewProvider {
    static var previews: some View {
        PostSquareImage(image: Image("postimg_1"))
    }
}

