//
//  ListOfMoviesInteractor.swift
//  MyMovies
//
//  Created by LUIS GONZALEZ on 08/02/24.
//

import Foundation

//7b38d5c3969b52351d5378d8c165103d
//

class ListOfMoviesInterarctor {
    func getListOfMovies() async -> PopularMovieResponseEntity {
        let url = URL(string: "http://api.themoviedb.org/3/movie/popular?api_key=7d681f214b74dd3d5938832ab57ded6b")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(PopularMovieResponseEntity.self, from: data)
    }
}
