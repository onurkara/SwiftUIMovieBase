//
//  TopRatedMovieDetailView.swift
//  SwiftUIMovieBase
//

import SwiftUI

struct TopRatedMovieDetailView: View {

    let movie: Movie

    private let pageTitle = "Movie Details"
    private let verticalSpaceSpacing: CGFloat = 10.0
    private let verticalStackEdgeInsets = EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
    private let primaryFont: CGFloat = 13.0
    private let secondaryFont: CGFloat = 10.0

    var body: some View {
        VStack(spacing: verticalSpaceSpacing) {
            HStack {
                Text(movie.title)
                Spacer()
                Text(movie.releaseDate).font(.system(size: primaryFont))
            }
            Text(movie.overview).font(.system(size: secondaryFont))
            Spacer()
        }
        .padding(verticalStackEdgeInsets)
        .navigationBarTitle(pageTitle, displayMode: .inline)
    }
}
