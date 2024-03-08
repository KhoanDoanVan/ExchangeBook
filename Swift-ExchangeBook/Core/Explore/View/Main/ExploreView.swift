//
//  ExploreView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 27/02/2024.
//

import SwiftUI

struct ExploreView: View {
    
    @StateObject private var searchViewModel = SearchViewModel()
    @State private var search = ""
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    
                    
                    SearchView(search: SearchViewModel())
                        .padding(.bottom, 0)
                    
                    ScrollView(.vertical, showsIndicators: false){
                        CategoriesView()
                            .padding(.bottom, 0)
                        
                        RecentlyView()
                            .padding(.bottom, 0)
                        
                        MostViewedView()
                            .padding(.top, 0)
                    }
                    
                    Spacer()
                }
                
                
                CartView()
            }            
        }
    }
}

#Preview {
    ExploreView()
}
