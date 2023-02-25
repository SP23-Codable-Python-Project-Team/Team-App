//
//  User.swift
//  WhatIAteToday.Ver1
//
//  Created by Jeewon Koo on 2/25/23.
//

import Foundation
import SwiftUI

struct User: Hashable, Codable {
    var userId: Int
    var userName: String
    var userBio: String
    
    private var userImg: String
    var image: Image {
        Image(userImg)
    }
}

