//
//  ContentView.swift
//  WhatIAteToday.Ver1
//
//  Created by Kyungyeon Lee on 2/24/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    @State private var selection: String? = nil
    
    var body: some View {
        NavigationStack {
            Text("WIAT")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            NavigationLink(
                destination: FeedView()) {
                Text("Start")
                .font(.headline)
                .fontWeight(.bold)
            }
        }
    }
}

struct FeedView: View {
    var body: some View {
        Text("placeholder")
            .navigationTitle("Feed")
        HStack{
            Image(systemName: "homekit")
            Image(systemName: "square.and.pencil")
            Image(systemName: "person.circle")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
