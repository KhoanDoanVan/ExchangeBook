//
//  Book.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 28/02/2024.
//

import Foundation

struct Book : Codable {
    var name : String
    var author : String
    var desription : String
    var point : Int
    var page : Int
    var image : String
}
