//
//  ListOfMoviesPresenter.swift
//  MyMovies
//
//  Created by LUIS GONZALEZ on 08/02/24.
//

import Foundation

protocol ListOfmoviesUI: AnyObject {
    func update(movies: [PopularMoviEntity])
}

class ListOfMoviesPresenter {
    var ui: ListOfmoviesUI?
    private let ListOfMoviesInteractor: ListOfMoviesInterarctor
    var models : [PopularMoviEntity] = []
    
    init(ListOfMoviesInteractor: ListOfMoviesInterarctor) {
        self.ListOfMoviesInteractor = ListOfMoviesInteractor
    }
    
    func onViewAppear() {
        Task {
            models = await ListOfMoviesInteractor.getListOfMovies().results
            ui?.update(movies: models)
        }
    }
}
