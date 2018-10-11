//
//  SearchService.swift
//  DataMovie
//
//  Created by Andre on 26/08/2018.
//  Copyright © 2018 Andre. All rights reserved.
//

import Foundation

class SearchService: NSObject {
    
    typealias Entity = DiscoverMovieListModel
    
    func get(title: String, page: Int, _ completion: @escaping (RequestResultType<Entity>) -> Void) {
        let url = DMUrl.url(for: .search(title, page))
        let service = APIService(with: url)
        service.getData(completion)
    }
    
}
