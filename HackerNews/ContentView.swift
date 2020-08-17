//
//  ContentView.swift
//  HackerNews
//
//  Created by Jan Bárta on 16/07/2020.
//  Copyright © 2020 Jan Bárta. All rights reserved.
//

import SwiftUI


struct ContentView: View {

@ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
        .navigationBarTitle("HackerNews")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




