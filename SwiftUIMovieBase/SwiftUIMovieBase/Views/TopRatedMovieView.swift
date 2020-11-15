//
//  TopRatedMovieView.swift
//  SwiftUIMovieBase

import SwiftUI

struct TopRatedMovieView: View {

    @ObservedObject var viewModel = TopRatedMoviesViewModel()

    var body: some View {
        VStack {
            List(viewModel.topRatedMovies) { movie in
                VStack(alignment: .leading) {
                    Text(movie.title)
                    Text(movie.releaseDate)
                    if movie == viewModel.topRatedMovies.last {
                        VStack(alignment: .center) {
                            ProgressView().onAppear(perform: {
                                viewModel.fetchTopRatedMovies()
                            })
                        }.frame(maxWidth: .infinity)
                    }
                }
            }
        }.onAppear(perform: {
            viewModel.fetchTopRatedMovies()
        })
    }
}
