//
//  CartView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 27/02/2024.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        VStack{
            Spacer()
            
            HStack{
                Spacer()
                
                NavigationLink{
                    CartDetailsView()
                } label: {
                    ZStack{
                        Circle()
                            .frame(width: 55, height: 55)
                            .foregroundColor(.white)
                            .shadow(color: Color(.systemGray4), radius: 15)
                        
                        Image("cart")
                    }
                }
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 30)
        }
    }
}

#Preview {
    CartView()
}
