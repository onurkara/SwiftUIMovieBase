//
//  BaseNetwork.swift
//  SwiftUIMovieBase
//

final class BaseNetwork {

    private enum Constants {
        static let apiKey = "ApiKey"
    }

    private var apiKey: String {
        PlistReader.readValueOfKey(key: Constants.apiKey)
    }
}
