//
//  File.swift
//  WhatIAteToday.Ver1
//
//  Created by Jeewon Koo on 4/5/23.
//

import Foundation
import SwiftUI

struct Post: Hashable, Codable {
    var postId: Int
    var postName: String
    var postContent: String
    private var postImg: String
    var image: Image {
        Image(postImg)
    }
}

