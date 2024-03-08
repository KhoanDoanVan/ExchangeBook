//
//  CategoriesView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 27/02/2024.
//

import SwiftUI

struct CategoriesView: View {
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Text("Categories")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    NavigationLink{
                        AllCategoriesView()
                    } label: {
                        SeeAllButtonView()
                    }
                    .foregroundColor(.black)
                    
                }
                .padding(.top, 35)
                .padding(.horizontal, 20)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(CategoriesBookFilter.allCases){ category in
                            if category.rawValue == 0 {
                                Button{
                                    
                                } label: {
                                    VStack{
                                        Image(category.icon)
                                        
                                        Text(category.title)
                                            .font(.footnote)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(.black)
                                    }
                                    .frame(width: 85, height: 85)
                                    .background(Color(.systemGray6))
                                    .padding(.leading)
                                    .padding(5)
                                }
                            } else {
                                Button{
                                    
                                } label: {
                                    VStack{
                                        Image(category.icon)
                                        
                                        Text(category.title)
                                            .font(.footnote)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(.black)
                                    }
                                    .frame(width: 85, height: 85)
                                    .background(Color(.systemGray6))
                                    .padding(5)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CategoriesView()
}
