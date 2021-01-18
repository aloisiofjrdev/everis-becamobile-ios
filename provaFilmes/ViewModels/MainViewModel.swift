//
//  MainViewModel.swift
//  provaFilmes
//
//  Created by Aloisio Formento Junior on 13/01/21.
//  Copyright © 2021 Aloisio Formento Junior. All rights reserved.
//

// import Foundation
// import UIKit
//
// protocol MainViewModelDelegate{
//    func reloadData(filme: ResultViewData)
// }
//
// class MainViewModel {
//    
//    private let client: FilmeServiceProtocol
//    var viewData: Bindable<ResultViewData?> = Bindable(nil)
//    var delegate: MainViewModelDelegate?
//    
//    init(client: FilmeServiceProtocol = FilmeService()){
//        self.client = client
//    }
//    
//    func loadMovie(){
//        client. { (filmes, erro) in
//            if let error = erro {
//                print(error)
//            }else{
//                self.delegate?.reloadData(filme: ResultViewData(model: filmes))
//            }
//        }
//    }
// }
