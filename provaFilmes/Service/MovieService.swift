//
//  MovieService.swift
//  provaFilmes
//
//  Created by Aloisio Formento Junior on 13/01/21.
//  Copyright © 2021 Aloisio Formento Junior. All rights reserved.
//

import Foundation
import Alamofire

protocol MovieServiceProtocol {
    func getFilmes(completion:@escaping (_ movies:[Filmes]?, _ error:String?) -> Void )
}

class MovieService: MovieServiceProtocol {
    
    
    func getFilmes(completion: @escaping ([Filmes]?, String?) -> Void) {
        let url = "https://api.themoviedb.org/3/trending/all/week?api_key=79b0976a6ec7bd4d968a3ef2d867985d&language=pt-BR"
        
        Alamofire.request(url, method: .get).responseJSON { (response) in
            if let data = response.data {
                do {
                    let decoder = JSONDecoder()
                    let welcome = try decoder.decode(Welcome.self, from: data)
                    completion(welcome.results, nil)
                } catch let error {
                    print(error)
                    completion(nil, error.localizedDescription)
                }
            }else{
                completion(nil, "Data null")
            }
        }
    }
    
    
}
