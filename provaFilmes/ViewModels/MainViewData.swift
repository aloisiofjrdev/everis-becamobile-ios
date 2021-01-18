//
//  MainViewData.swift
//  provaFilmes
//
//  Created by Aloisio Formento Junior on 18/01/21.
//  Copyright © 2021 Aloisio Formento Junior. All rights reserved.
//

import Foundation

protocol ResultViewDataType {
    var name: String { get }
    var backdropPath: String { get }
    var title: String { get }
    var overview: String { get }
    var posterPath: String { get }
    var voteAvarage: Double { get }
}

class ResultViewData {

    // MARK: - Properts
    private let model: Filmes

    // MARK: - Constructors
    init(model: Filmes) {
        self.model = model
    }
}

extension ResultViewData: ResultViewDataType {
    var name: String {
        return model.name ?? model.title!
    }

    var backdropPath: String {
        return model.backdropPath
    }

    var title: String {
        return model.title ?? model.name!
    }

    var overview: String {
        return model.overview
    }

    var posterPath: String {
        return model.posterPath
    }

    var voteAvarage: Double {
        return model.voteAverage
    }

}
