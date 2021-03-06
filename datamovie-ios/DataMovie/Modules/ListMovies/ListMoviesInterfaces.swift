//
//  ListMoviesInterfaces.swift
//  DataMovie
//
//  Created by Andre on 12/08/2018.
//  Copyright (c) 2018 Andre. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

enum ListMoviesNavigationOption {
    case addMovie(transitionDelegate: UIViewControllerTransitioningDelegate, circularTransiction: CircularTransition, movieListUpdateProtocol: MovieListUpdateProtocol)
    case detail(movieEntity: MovieEntity, imageTransition: ImageAnimatorTransition)
}

protocol ListMoviesWireframeInterface: WireframeInterface {
    func navigate(to option: ListMoviesNavigationOption)
}

protocol ListMoviesViewInterface: ViewInterface, UIViewControllerTransitioningDelegate {
    var imageTransition: ImageAnimatorTransition { get }
    func scrollCollectionToFirstItem()
    func reloadData(completion: (()-> Void)?)
    func showFilterOptions(withProtocol fiterActionProtocol: AlertFiterActionProtocol, andFilterList filterList: [AlertListMovieFilterModel])
}

extension ListMoviesViewInterface {
    func reloadData(completion: (()-> Void)? = nil) {
        reloadData(completion: completion)
    }
}

protocol ListMoviesPresenterInterface: PresenterInterface {
    func refreshList()
    func numberOfItems() -> Int
    func didSelectItem(at indexPath: IndexPath)
    func item(at indexPath: IndexPath) -> MovieListItem?
    func addMovies(circularTransiction: CircularTransition)
    func loadMovies()
    func filterMovies(by text: String)
    func touchFilterOptions()
    var footerMessage: String { get }
}

protocol ListMoviesInteractorInterface: InteractorInterface { }

protocol MovieListUpdateProtocol {
    func setNeedUpdateList()
}
