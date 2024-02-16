//
//  ListOfMoviesInteractor.swift
//  MyMovies
//
//  Created by LUIS GONZALEZ on 08/02/24.
//

import Foundation

//3c56823841920fc21c9d516189db13f4
//

class ListOfMoviesInterarctor {
    func getListOfMovies() async -> PopularMovieResponseEntity {
        let url = URL(string: "http://api.themoviedb.org/3/movie/popular?api_key=3c56823841920fc21c9d516189db13f4")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(PopularMovieResponseEntity.self, from: data)
    }
}
