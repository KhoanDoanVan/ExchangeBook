//
//  DetailViewModel.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 28/02/2024.
//

import Foundation


class DetailViewModel: ObservableObject{
    @Published var book : Book
    @Published var liked : Bool
    
    init(book: Book, liked : Bool) {
        self.book = book
        self.liked = true
    }
}
