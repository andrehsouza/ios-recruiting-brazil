//
//  SearchMoviesInteractor.swift
//  DataMovie
//
//  Created by Andre on 26/08/2018.
//  Copyright (c) 2018 Andre. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class SearchMoviesInteractor {
    fileprivate let searchMovieService = SearchService()
}

// MARK: - Extensions -

extension SearchMoviesInteractor: SearchMoviesInteractorInterface {
    
    func find(title: String, page: Int, _ completion: @escaping (RequestResultType<DiscoverMovieListModel>) -> Void) {
            searchMovieService.get(title: title, page: page, completion)
        }
    
}
