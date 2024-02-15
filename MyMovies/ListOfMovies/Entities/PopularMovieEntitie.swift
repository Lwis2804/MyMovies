//
//  PopularMovieEntitie.swift
//  MyMovies
//
//  Created by LUIS GONZALEZ on 08/02/24.
//

import Foundation

struct PopularMoviEntity : Decodable {
    var id : Int
    var title: Int
    var overview: String
    var imageURL: String
    var votes : Double
    
    enum CodingKeys: String, CodingKey {
        case id, title, overview
        case imageURL = "poster_path"
        case votes = "vote_average"
    }
}

