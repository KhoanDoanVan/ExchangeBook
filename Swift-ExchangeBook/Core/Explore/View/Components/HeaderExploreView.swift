//
//  HeaderExploreView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 27/02/2024.
//

import SwiftUI

struct HeaderExploreView: View {
    var body: some View {
        ZStack{
            Text("MaBOOK")
                .font(.system(size: 20))
                .fontWeight(.semibold)
            
            HStack{
                Spacer()
                
                Button{
                    
                } label: {
                    Image("notification")
                }
                .padding(.trailing, 20)
            }
        }
        .padding(.top, 0)
    }
}

#Preview {
    HeaderExploreView()
}
