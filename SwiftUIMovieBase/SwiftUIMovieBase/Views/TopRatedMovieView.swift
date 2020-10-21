//
//  TopRatedMovieView.swift
//  SwiftUIMovieBase

import SwiftUI

struct TopRatedMovieView: View {

    @ObservedObject var viewModel = TopRatedMoviesViewModel()

    var body: some View {
        VStack {
            if viewModel.loading {
                LottiView()
            }
            else {
                List(viewModel.topRatedMovies) { movie in
                    VStack(alignment: .leading) {
                        Text(movie.title)
                        Text(movie.releaseDate)

                        if movie == viewModel.topRatedMovies.last {
                            LottiView().onAppear(perform: {
                                viewModel.fetchTopRatedMovies()
                            })
                        }
                    }
                }
            }

        }.onAppear(perform: {
            viewModel.fetchTopRatedMovies()
        })
    }
}
