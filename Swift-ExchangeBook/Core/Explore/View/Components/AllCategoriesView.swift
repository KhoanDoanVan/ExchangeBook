//
//  AllCategoriesView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 27/02/2024.
//

import SwiftUI

struct AllCategoriesView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    Grid3ColumnView()
                        .padding(.top, 30)
                }
                .navigationTitle("Categories")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .toolbar{
                    ToolbarItem(placement : .topBarLeading){
                        Button{
                            dismiss()
                        } label: {
                            Image("type=left")
                                .foregroundColor(.black)
                        }
                    }
                }
                
                CartView()
                
            }
        }
    }
}

#Preview {
    AllCategoriesView()
}
