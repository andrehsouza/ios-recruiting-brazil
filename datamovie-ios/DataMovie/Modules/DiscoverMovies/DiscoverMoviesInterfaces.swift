//
//  DiscoverMoviesInterfaces.swift
//  DataMovie
//
//  Created by Andre Souza on 24/08/2018.
//  Copyright (c) 2018 Andre. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

enum DiscoverMoviesNavigationOption {
}

protocol DiscoverMoviesWireframeInterface: WireframeInterface {
    func navigate(to option: DiscoverMoviesNavigationOption)
}

protocol DiscoverMoviesViewInterface: ViewInterface & AddListsProtocol {
    func reloadData()
    func reloadData(at index: IndexPath)
    func hideErrorView()
    func showError(error: ErrorInterface, target: Any, action: Selector)
    func showTableviewLoading(_ loading: Bool)
    func showFooterLoading(_ loading: Bool)
    func showFooterUpdatedMessage(message: String)
}

protocol DiscoverMoviesPresenterInterface: PresenterInterface & DiscoverMovieDetailProtocol {
    func loadItems()
    func numberOfSections() -> Int
    func numberOfItems(in section: Int) -> Int
    func updateItemStatus(with movieID: Int, isComplete: Bool)
    func showStatus(_ status: DMButtonStatus, at indexPath: IndexPath)
    func loadPosterImage(_ imageView: UIImageView, at indexPath: IndexPath)
    func didSelectItem(at indexPath: IndexPath)
}

protocol DiscoverMoviesInteractorInterface: InteractorInterface {
    func getDiscover(endPoint enpoint: DiscoverEndpoint, _ completion: @escaping (RequestResultType<DiscoverMovieListModel>) -> Void)
}
