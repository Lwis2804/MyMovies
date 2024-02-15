//
//  ListOfMoviesView.swift
//  MyMovies
//
//  Created by LUIS GONZALEZ on 08/02/24.
//

import UIKit

class ListOfMoviesView : UIViewController {
    var presenter : ListOfMoviesPresenter?
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) hass not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        presenter?.onViewAppear()
    }
}

extension ListOfMoviesView : ListOfmoviesUI {
    func update(movies: [PopularMoviEntity]) {
        print("Datos recibidos \(movies)")
    }
    
    
}
