//
//  Grid3ColumnView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 27/02/2024.
//

import SwiftUI

struct Grid3ColumnView: View {
        
    var body: some View {
        ScrollView{
            LazyVGrid(columns : [
                GridItem(.flexible(minimum: 100, maximum: 100), spacing : 20),
                GridItem(.flexible(minimum: 100, maximum: 100), spacing: 20),
                GridItem(.flexible(minimum: 100, maximum: 100), spacing: 20)
            ], spacing: 20){
                ForEach(CategoriesBookFilter.allCases, id : \.self){category in
                    Button{
                        
                    } label: {
                        VStack{
                            Image(category.icon)
                            
                            Text(category.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                        }
                        .frame(width: 100, height: 100)
                        .background(Color(.systemGray6))
                    }
                }
            }
        }
    }
}

#Preview {
    Grid3ColumnView()
}
