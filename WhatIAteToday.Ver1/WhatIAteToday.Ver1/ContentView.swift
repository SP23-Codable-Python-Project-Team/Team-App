//
//  ContentView.swift
//  WhatIAteToday.Ver1
//
//  Created by Kyungyeon Lee on 2/24/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    var body: some View {
        VStack {
            Image(systemName: "square.and.pencil")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            //Landing page text
            Text("What I Ate Today!")
                .font(.system(size: 40))
                .multilineTextAlignment(.center)
            
            //Start button
            Button("START") {
                showDetails.toggle()
            }
            
            //Move to the next page
            NavigationLink(destination: homeView(), label: {
                Text("START")
                
            })
        }
        .padding()
    }
}

struct homeView: View {
    var body: some View {
        Text("This is tmp Home!")
            .font(.system(size: 40))
            .multilineTextAlignment(.center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
