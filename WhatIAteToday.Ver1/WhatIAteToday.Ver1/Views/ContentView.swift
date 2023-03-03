//
//  ContentView.swift
//  WhatIAteToday.Ver1
//
//  Created by Kyungyeon Lee on 2/24/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            Text("WIAT")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            NavigationLink(
                destination: FeedView().navigationBarBackButtonHidden(true)) {
                Text("Click Here to Start")
                .font(.headline)
                .fontWeight(.bold)
                
            }
        }
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    
    }
}


