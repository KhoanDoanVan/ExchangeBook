//
//  SelectTagView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 25/02/2024.
//

import SwiftUI

struct SelectTagView: View {
    
    let title : String
    
    var body: some View {
        VStack{
            HStack{
                Text(title)
                
                Spacer()
                
                Image("type=down")
            }
        }
    }
}

#Preview {
    SelectTagView(title: "")
}
