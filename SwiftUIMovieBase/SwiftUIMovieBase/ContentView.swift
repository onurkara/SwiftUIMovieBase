//
//  ContentView.swift
//  SwiftUIMovieBase


import SwiftUI

struct ContentView: View {
    var body: some View {
        return TabView {
            Text("Top rated movies").tabItem {
                Image(systemName: "list.star")
                Text("Top Rated")
            }

            Text("Popular movies").tabItem {
                Image(systemName: "list.and.film")
                Text("Popular")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
