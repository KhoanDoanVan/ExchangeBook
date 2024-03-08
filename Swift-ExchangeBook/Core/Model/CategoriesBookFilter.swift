//
//  CategoriesBookFilter.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 27/02/2024.
//

import Foundation

enum CategoriesBookFilter : Int, Identifiable, CaseIterable {
    case business
    case education
    case music
    case romance
    case puzzle
    case worldwide
    case photography
    case film
    case childrenbook
    case selfhelp
    case travel
    case economy
    
    
    var title: String{
        switch self{
        case.business : return "Business"
        case.education : return "Education"
        case.music : return "Music"
        case.romance : return "Romance"
        case.puzzle : return "Puzzle"
        case.photography : return "Photography"
        case.film : return "Film"
        case.childrenbook : return "Children Book"
        case.selfhelp : return "Self-Help"
        case.travel : return "Travel"
        case.economy : return "Economy"
        case.worldwide : return "Worldwide"
        default : return ""
        }
    }
    
    var icon: String{
        switch self{
        case.business : return "category=business"
        case.education : return "category=cap"
        case.music : return "category=music"
        case.romance : return "category=heart"
        case.puzzle : return "category=puzzle"
        case.photography : return "category=photography"
        case.film : return "category=film"
        case.childrenbook : return "category=child"
        case.selfhelp : return "category=selfhelp"
        case.travel : return "category=travel"
        case.economy : return "category=economy"
        case.worldwide : return "category=world"
        default : return ""
        }
    }
    
    var id : Int{
        return self.rawValue
    }
}
