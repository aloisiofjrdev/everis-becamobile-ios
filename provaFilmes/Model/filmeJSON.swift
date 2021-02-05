// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let page: Int
    let results: [Filmes]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
struct Filmes: Codable {
    let genreIDS: [Int]
    let originalLanguage: OriginalLanguage
    let posterPath: String
    let firstAirDate: String?
    let voteAverage: Double
    let originalName: String?
    let originCountry: [String]?
    let id, voteCount: Int
    let overview, backdropPath: String
    let name: String?
    let popularity: Double
    let mediaType: MediaType
    let adult: Bool?
    let originalTitle, releaseDate, title: String?
    let video: Bool?

    enum CodingKeys: String, CodingKey {
        case genreIDS = "genre_ids"
        case originalLanguage = "original_language"
        case posterPath = "poster_path"
        case firstAirDate = "first_air_date"
        case voteAverage = "vote_average"
        case originalName = "original_name"
        case originCountry = "origin_country"
        case id
        case voteCount = "vote_count"
        case overview
        case backdropPath = "backdrop_path"
        case name, popularity
        case mediaType = "media_type"
        case adult
        case originalTitle = "original_title"
        case releaseDate = "release_date"
        case title, video
    }
}

enum MediaType: String, Codable {
    case movie = "movie"
    case tv = "tv"
}

enum OriginalLanguage: String, Codable {
    case en = "en"
    case es = "es"
    case fr = "fr"
    case ja = "ja"
}
