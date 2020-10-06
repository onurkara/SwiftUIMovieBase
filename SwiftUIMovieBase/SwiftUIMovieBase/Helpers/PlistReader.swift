//
//  PlistReader.swift
//  SwiftUIMovieBase
//


import Foundation

final class PlistReader {

    private enum Constants {
        static let plistFileKey = "Keys"
        static let plistFileValue = "plist"
    }

    /// Read value of given key from plist file
    /// - Parameter key: Key
    /// - Returns: Returns calculated value
    static func readValueOfKey(key: String) -> String {
        guard let path = Bundle.main.path(forResource: Constants.plistFileKey, ofType: Constants.plistFileValue),
              let keys = NSDictionary(contentsOfFile: path),
              let value = keys[key] as? String else {
            return ""
        }

        return value
    }
}
