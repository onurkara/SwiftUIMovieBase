//
//  Movie.swift
//  SwiftUIMovieBase

struct Movie: Decodable, Identifiable {

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

extension Movie: Equatable {

    static func ==(lhs: Movie, rhs: Movie) -> Bool {
        return lhs.id == rhs.id
    }
}
