//
//  PostDetail.swift
//  WhatIAteToday.Ver1
//
//  Created by Jeewon Koo on 4/5/23.
//

import SwiftUI

struct PostDetail: View {
    
    var post: Post
    
    var body: some View {
        VStack {
            Spacer()
            PostSquareImage(image: post.image)

            VStack(alignment: .leading) {
                Text(post.postName)
                    .font(.title)
                    .padding(0.1)
                
                Divider().padding(0.1)
                
                Text(post.postContent)
                    .font(.title2)
            }
            .padding()

            Spacer()
        }
    }
}

struct PostDetail_Previews: PreviewProvider {
    static var previews: some View {
        PostDetail(post: posts[0])
    }
}

