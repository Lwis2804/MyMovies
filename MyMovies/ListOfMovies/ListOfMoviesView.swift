//
//  ListOfMoviesView.swift
//  MyMovies
//
//  Created by LUIS GONZALEZ on 08/02/24.
//

import UIKit

class ListOfMoviesView : UIViewController {
    private var moviesTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.estimatedRowHeight = 120
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(MovieCellView.self, forCellReuseIdentifier: "Movie")
        return tableView
    }()
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
        setUpTableView()
        presenter?.onViewAppear()
    }
    
    private func setUpTableView() {
        view.addSubview(moviesTableView)
        
        NSLayoutConstraint.activate([
            moviesTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            moviesTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            moviesTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            moviesTableView.topAnchor.constraint(equalTo: view.topAnchor)
        ])
            
            moviesTableView.dataSource = self
        
    }
}

extension ListOfMoviesView : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter!.models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCellView", for: indexPath) as!  MovieCellView
      //  cell.backgroundColor = .red
        let model = presenter!.models[indexPath.row]
        
        cell.configure(model: model)
        
        return cell
    }
    
    
    
}

extension ListOfMoviesView : ListOfmoviesUI {
    func update(movies: [PopularMoviEntity]) {
        print("Datos recibidos \(movies)")
        DispatchQueue.main.async {
            self.moviesTableView.reloadData()
        }
    }
    
    
}
