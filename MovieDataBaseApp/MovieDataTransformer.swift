//
//  MovieDataTransformer.swift
//  MovieDataBaseApp
//
//  Created by Vinayak Ganesh Putta on 27/10/24.
//

import Foundation

class MovieDataTransformer {
    private var movies: [MovieDataModel]

    init(movies: [MovieDataModel]) {
        self.movies = movies
    }
    
    func update(modelData: [MovieDataModel]) {
        self.movies = modelData
    }
    
    private func movies(by searchString: String) -> [MovieDataModel] {
        var searchResults = Set<MovieDataModel>([])
        
        for movie in movies {
            if movie.genre.localizedStandardContains(searchString) ||
                movie.director.localizedStandardContains(searchString) ||
                movie.title.localizedStandardContains(searchString) ||
                movie.actors.localizedStandardContains(searchString) {
                searchResults.insert(movie)
            }
        }
        return Array(searchResults)
    }
    
    func getMoviesBy(genre: String) -> [MovieDataModel] {
        var searchResults = [MovieDataModel]()
        
        for movie in movies {
            let genres = movie.genre.stringToArrayValues()
            
            if genres.contains(genre) {
                searchResults.append(movie)
            }
        }
        return searchResults
    }
    
    func getMoviesBy(year: String) -> [MovieDataModel] {
        var searchResults = [MovieDataModel]()
        
        for movie in movies {
            if movie.year == year {
                searchResults.append(movie)
            }
        }
        return searchResults
    }
    
    func getMoviesBy(director: String) -> [MovieDataModel] {
        var searchResults = [MovieDataModel]()
        
        for movie in movies {
            let directors = movie.director.stringToArrayValues()
            
            if directors.contains(director) {
                searchResults.append(movie)
            }
        }
        return searchResults
    }
    
    func getMoviesBy(actor: String) -> [MovieDataModel] {
        var searchResults = [MovieDataModel]()
        
        for movie in movies {
            let actors = movie.actors.stringToArrayValues()
            
            if actors.contains(actor) {
                searchResults.append(movie)
            }
        }
        return searchResults
    }
    
    func getAllPossibleYears() -> [MovieListDataProtocol] {
        var result = Set<String>()
        for movie in movies {
            result.insert(movie.year)
        }
        return Array(result)
    }
    
    func getAllPossibleActorNames() -> [MovieListDataProtocol] {
        var result = Set<String>()
        for movie in movies {
            for actorName in movie.actors.stringToArrayValues() {
                result.insert(actorName)
            }
        }
        return Array(result)
    }
    
    func getAllPossibleDirectorNames() -> [MovieListDataProtocol] {
        var result = Set<String>()
        for movie in movies {
            for directorName in movie.director.stringToArrayValues() {
                if directorName != "N/A" {
                    result.insert(directorName)
                }
            }
        }
        return Array(result)
    }
    
    func getAllPossibleGenre() -> [MovieListDataProtocol] {
        var result = Set<String>()
        for movie in movies {
            for genreName in movie.genre.stringToArrayValues() {
                result.insert(genreName)
            }
        }
        return Array(result)
    }
    
    func getAllMiniMovieData() -> [MovieListDataProtocol] {
        var result = [MovieListDataProtocol]()
        for movie in movies {
            result.append(MovieDataMiniModel.createModel(with: movie))
        }
        return result
    }
    
    func getAllMiniMovieData(from movieData: [MovieDataModel]) -> [MovieDataMiniModel] {
        var result = [MovieDataMiniModel]()
        for movie in movieData {
            result.append(MovieDataMiniModel.createModel(with: movie))
        }
        return result
    }
    
    func getMiniMoviesBy(search: String) -> [MovieListDataProtocol] {
       let movieData = movies(by: search)
        return getAllMiniMovieData(from: movieData)
    }
}

extension String: MovieListDataProtocol {
    func stringToArrayValues() -> [String] {
        return self.split(separator: ",").map { $0.trimmingCharacters(in: .whitespaces) }
    }
}
