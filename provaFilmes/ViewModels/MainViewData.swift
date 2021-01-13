//
//  MainViewData.swift
//  provaFilmes
//
//  Created by Aloisio Formento Junior on 13/01/21.
//  Copyright © 2021 Aloisio Formento Junior. All rights reserved.
//

protocol MovieViewDataType {
    var title: String {get}
    var overview: String {get}
    var backdropPath: String {get}
    var posterPath: String {get}
    var voteAverage: Double {get}
    var name : String {get}
}

class MovieViewData {
    
    private var model : Filmes
    
    init(model : Filmes) {
        self.model = model
    }
}

extension MovieViewData:MovieViewDataType{
    var name: String {
        return model.name ?? model.title!
    }
    
    var title: String {
        return model.title ?? model.name!
    }
    
    var overview: String {
        return model.overview
    }
    
    var backdropPath: String {
        return model.backdropPath
    }
    
    var posterPath: String {
        return model.posterPath
    }
    
    var voteAverage: Double {
        return model.voteAverage
    }
    
    
}
