//
//  Accessiblity+.swift
//  provaFilmes
//
//  Created by Aloisio Formento Junior on 19/01/21.
//  Copyright © 2021 Aloisio Formento Junior. All rights reserved.
//

import Foundation

extension DetalhesFilmeViewController {
    func setupAccessibility() {
        tituloFilmeDetalhes.accessibilityTraits = .header
        imagemFilmeDetalhes.accessibilityTraits = .image
        sinopseFilmeDetalhes.accessibilityTraits = .none
        raitingFilmeDetalhes.accessibilityTraits = .none
        textoFilmeDetalhes.accessibilityTraits = .none
    }
}

extension CelulaFilmeCollectionViewCell {
    func setupAccessibility(){
        imagemFilme.isAccessibilityElement = true
        imagemFilme.accessibilityTraits = .image
        imagemFilme.accessibilityLabel = "Conheça os detalhes do filme"
        imagemFilme.accessibilityHint = "clique duas vezes para ativar"
    }
}
