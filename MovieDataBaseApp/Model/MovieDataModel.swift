//
//  MovieDataModel.swift
//  MovieDataBaseApp
//
//  Created by Vinayak Ganesh Putta on 27/10/24.
//

import Foundation

import Foundation

struct MovieDataModel: Codable, Hashable {
    
    let title, year, rated, released: String
    let runtime, genre, director, writer: String
    let actors, plot, language, country: String
    let awards: String
    let poster: String
    let ratings: [Rating]
    let metascore, imdbRating, imdbVotes, imdbID: String
    let type: String?
    let dvd: String?
    let boxOffice, production: String?
    let website: String?
    let response: String?
    let totalSeasons: String?

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case rated = "Rated"
        case released = "Released"
        case runtime = "Runtime"
        case genre = "Genre"
        case director = "Director"
        case writer = "Writer"
        case actors = "Actors"
        case plot = "Plot"
        case language = "Language"
        case country = "Country"
        case awards = "Awards"
        case poster = "Poster"
        case ratings = "Ratings"
        case metascore = "Metascore"
        case imdbRating, imdbVotes, imdbID
        case type = "Type"
        case dvd = "DVD"
        case boxOffice = "BoxOffice"
        case production = "Production"
        case website = "Website"
        case response = "Response"
        case totalSeasons
    }
}


struct Rating: Codable, Hashable {
    let source: Source
    let value: String

    enum CodingKeys: String, CodingKey {
        case source = "Source"
        case value = "Value"
    }
}

enum Source: String, Codable, Hashable {
    case internetMovieDatabase = "Internet Movie Database"
    case metacritic = "Metacritic"
    case rottenTomatoes = "Rotten Tomatoes"
}

enum Response: String, Codable, Hashable {
    case responseTrue = "True"
}

enum TypeEnum: String, Codable, Hashable {
    case movie = "movie"
    case series = "series"
}


struct MovieDataMiniModel: MovieListDataProtocol {
    let title, year, released: String
    let genre: String
    let actors, plot, language: String
    let poster: String
    let ratings: [Rating]
    
    static func createModel(with model: MovieDataModel) -> MovieDataMiniModel {
        return MovieDataMiniModel(title: model.title, year: model.year, released: model.released, genre: model.genre, actors: model.actors, plot: model.plot, language: model.language, poster: model.poster, ratings: model.ratings)
    }
}
