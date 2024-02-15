//
//  PopularMovieResponseEntity.swift
//  MyMovies
//
//  Created by LUIS GONZALEZ on 12/02/24.
//

import Foundation

struct PopularMovieResponseEntity: Decodable {
    let results: [PopularMoviEntity]
}
