//
//  SceneDelegate.swift
//  MyMovies
//
//  Created by LUIS GONZALEZ on 08/02/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var listOfMoviesRouter = ListOfMoviesRouter()


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windoScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windoScene)
        listOfMoviesRouter.showListOfMovies(window: window)
    }

   


}

