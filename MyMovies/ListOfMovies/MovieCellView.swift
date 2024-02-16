//
//  MovieCellView.swift
//  MyMovies
//
//  Created by LUIS GONZALEZ on 14/02/24.
//

import Foundation
import UIKit
import Kingfisher


class MovieCellView: UITableViewCell {
    let movieImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let movieName: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 32,
                                 weight: .bold,
                                 width: .condensed)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let movieDescrition: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 12,
                                 weight: .regular,
                                 width: .standard)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpViews()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews() {
        addSubview(movieImageView)
        addSubview(movieName)
        addSubview(movieDescrition)
        
        NSLayoutConstraint.activate([
            movieImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            movieImageView.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            movieImageView.heightAnchor.constraint(equalToConstant: 200),
            movieImageView.widthAnchor.constraint(equalToConstant: 200),
            movieImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            movieName.leadingAnchor.constraint(equalTo: movieImageView.trailingAnchor, constant: 18),
            movieName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            movieName.topAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -12),
            
            movieDescrition.leadingAnchor.constraint(equalTo: movieImageView.trailingAnchor, constant: 20),
            movieDescrition.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            movieDescrition.topAnchor.constraint(equalTo: movieName.bottomAnchor, constant: 8),
            movieDescrition.topAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -12),
        ])
    }
    
    func configure(model : PopularMoviEntity) {
        movieImageView.kf.setImage(with: URL(string: "https://image.tmdb.org/t/p/w200" + model.imageURL))
        movieName.text = model.title
        movieDescrition.text = model.overview
    }
    
    
}
