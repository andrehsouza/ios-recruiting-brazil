//
//  DiscoverMoviesInteractor.swift
//  DataMovie
//
//  Created by Andre Souza on 24/08/2018.
//  Copyright (c) 2018 Andre. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class DiscoverMoviesInteractor {
    fileprivate let discoverMovieService = DiscoverMovieService()
}

// MARK: - Extensions -

extension DiscoverMoviesInteractor: DiscoverMoviesInteractorInterface {
    
    func getDiscover(endPoint enpoint: DiscoverEndpoint, _ completion: @escaping (RequestResultType<DiscoverMovieListModel>) -> Void) {
        discoverMovieService.get(endPoint: enpoint, completion)
    }
    
}