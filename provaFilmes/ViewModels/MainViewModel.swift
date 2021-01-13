//
//  MainViewModel.swift
//  provaFilmes
//
//  Created by Aloisio Formento Junior on 13/01/21.
//  Copyright © 2021 Aloisio Formento Junior. All rights reserved.
//

import Foundation

class MainViewModel {
    
    private let client: MovieServiceProtocol
    private var viewData : MovieViewData?
    
    init(client: MovieServiceProtocol = MovieService()) {
        self.client = client
    }
    
    func loadMovie() {
        client.getFilmes { (movie, erro) in
            if let error = erro {
                print(error)
            }else if let filmes = movie{
                self.viewData = MovieViewData(model: movie)
//                self.filmes = filmes
//                self.colecaoFilmes.reloadData()
            }
        }
    }
}
