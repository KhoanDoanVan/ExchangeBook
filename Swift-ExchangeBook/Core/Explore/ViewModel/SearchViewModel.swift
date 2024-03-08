//
//  SearchViewModel.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 27/02/2024.
//

import Foundation


class SearchViewModel: ObservableObject{
    @Published var search = ""
    
    init(search: String = "") {
        self.search = search
    }
}
