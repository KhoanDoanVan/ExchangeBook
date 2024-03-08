//
//  FilterViewModel.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 28/02/2024.
//

import Foundation

class FilterViewModel : ObservableObject{
    
    @Published var listGenre = [
        "Categories","Music","Business","Education","Romance","Puzzle","Worldwide","Photography","Film","Children Book","Self-help","Travel","Economy"
    ]
    
    @Published var availableBook : Bool
    @Published var genres : String
    @Published var rangePointMin : String
    @Published var rangePointMax : String
    @Published var iconGenre : String
    @Published var iconRange : String
    
    init(availableBook: Bool, genres: String, rangePointMin: String, rangePointMax : String, iconGenre : String, iconRange : String) {
        self.availableBook = availableBook
        self.genres = genres
        self.rangePointMin = rangePointMin
        self.rangePointMax = rangePointMax
        self.iconGenre = iconGenre
        self.iconRange = iconRange
    }
}
