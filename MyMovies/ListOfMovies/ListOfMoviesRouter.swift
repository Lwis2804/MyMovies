//
//  ListOfMoviesRouter.swift
//  MyMovies
//
//  Created by LUIS GONZALEZ on 08/02/24.
//

import Foundation
import UIKit

class ListOfMoviesRouter  {
    func showListOfMovies (window : UIWindow?) {
        let view = ListOfMoviesView()
        let interactor = ListOfMoviesInterarctor()
        let presenter = ListOfMoviesPresenter(ListOfMoviesInteractor: interactor)
        presenter.ui = view
        view.presenter = presenter
        window?.rootViewController = view
        window?.makeKeyAndVisible()
    }
    
}
