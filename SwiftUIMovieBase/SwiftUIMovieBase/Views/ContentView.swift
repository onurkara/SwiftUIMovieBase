//
//  ContentView.swift
//  SwiftUIMovieBase


import SwiftUI

struct ContentView: View {
    var body: some View {

        return TabView {
            TopRatedMovieView().tabItem {
                Image(systemName: "list.star")
                Text("Top Rated")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
