//
//  MovieDataService.swift
//  MovieDataBaseApp
//
//  Created by Vinayak Ganesh Putta on 27/10/24.
//

import Foundation

class MovieDataService {
    func fetchALLMovies() -> [MovieDataModel] {
        guard let jsonData = jsonString.data(using: .utf8) else {
            return []
        }
        do {
           let movieData = try JSONDecoder().decode([MovieDataModel].self, from: jsonData)
            return movieData
        } catch let error as DecodingError {
            switch error {
            case .typeMismatch(let type, let context):
                print("Type mismatch error: \(type) - \(context.debugDescription)")
            case .valueNotFound(let type, let context):
                print("Value not found error: \(type) - \(context.debugDescription)")
            case .keyNotFound(let key, let context):
                print("Key '\(key.stringValue)' not found: \(context.debugDescription) - codingPath: \(context.codingPath)")
            case .dataCorrupted(let context):
                print("Data corrupted: \(context.underlyingError)")
            @unknown default:
                print("Unknown decoding error: \(error.localizedDescription)")
            }
        } catch {
            print("Other error: \(error.localizedDescription)")
        }
        return []
    }
}

