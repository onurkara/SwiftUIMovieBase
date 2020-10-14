//
//  Movie.swift
//  SwiftUIMovieBase

struct Movie: Decodable {

    let id: Int
    let title: String
    let overview: String
    let releaseDate: String

    private enum CodingKeys : String, CodingKey {
        case id
        case title
        case overview
        case releaseDate = "release_date"
    }
}
